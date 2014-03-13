class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #session :off

  helper :all
  protect_from_forgery
  before_filter :prepare_for_mobile

  private
  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?

  def prepare_for_mobile
    session[:mobile_param] = params[:mobile] if params[:mobile]
    request.format = :mobile if mobile_device?
  end

end

# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  # Render mobile or desktop depending on User-Agent for these actions.
  before_filter :check_for_mobile, :only => [:new, :edit]

  # Always render mobile versions for these, regardless of User-Agent.
  before_filter :prepare_for_mobile, :only => :show
  protect_from_forgery with: :exception
end
