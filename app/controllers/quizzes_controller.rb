class QuizzesController < ApplicationController
  def index

    session[:nick] = (params[:nick])?params[:nick]:'Guest'
    #session[:user] -> facebook data

    @nickname = session[:nick]
    total = params[:number].to_i

    session[:correct] = 0
    session[:total]   = total
    session[:current] = 1
  end
  def new

    params[:questions] = params[:questions] || {}
    session[:current] = params[:questions].size + 1

    if params[:questions].size >= 9
      redirect_to action: :show, id: "result", questions: params[:questions]  #it needs id!
    end
    @current = session[:current]
    @total   = session[:total] = Question.count(:all)

    if @current < 10
      @question =  Question.where(id: @current).limit(1).first
      @choices = [@question.ans1, @question.ans2,@question.ans3,@question.ans4]
      @letters = ['A','B','C','D']

      session[:correct] = session[:correct] + 1
    end
  end

  def show
    last_id = Toplist.count + 1
    score = session[:correct] * 10
    object = Toplist.new(:sid => last_id, :pic => 'avatar_placeholder.svg', :name => session[:nick], :score => score)
    object.save
    @position=['1st', '2nd', '3rd', '4th', '5th', '6th', '7th', '8th', '9th', '10th']
    @result=Toplist.all.order("score DESC").limit(5)
    @result_last = object
    session[:correct] = 0

  end

  def end






  end

end