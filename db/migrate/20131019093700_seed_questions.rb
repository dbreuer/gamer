class SeedQuestions < ActiveRecord::Migration
  def up
    Question.create body: "What won't Ryan Gosling eat?", correct_answer: "B", ans1: "Peanut-butter jelly", ans2: "His cereal", ans3: "Honey badger", ans4: "All the things"
    Question.create body: "What does Antoine Dodson want you to hide?", correct_answer: "C", ans1: "All the things", ans2: "Donald Trumps", ans3: "Your kids and your wife", ans4: "The implants scars"
    Question.create body: "What will Meatloaf never do for love?", correct_answer: "C", ans1: "Anything", ans2: "This", ans3: "That", ans4: "All the things"
    Question.create body: "What is diversity?", correct_answer: "D", ans1: "An old, old wooden ship", ans2: "What ISN'T diverdity...", ans3: "Everyones favorite street dance crew", ans4: "The state of being diverse"
    Question.create body: "Who is Brian, from Family Guy, in love with?", correct_answer: "B", ans1: "Meg", ans2: "Lois", ans3: "Herbert", ans4: "All the people"
    Question.create body: "In Yann Martel's 'Life of Pi', what is the name of the tiger with with whom Pi is stranded?", correct_answer: "A", ans1: "Richard Parker", ans2: "Tiggy-poo", ans3: "Billy Roshan", ans4: "Batman"
    Question.create body: "Which company's marketing department tweeted their mass 'XFactor' firing?", correct_answer: "C", ans1: "United Airlines", ans2: "Whole Foods", ans3: "HMV", ans4: "BMW"
    Question.create body: "Which animal represents Mac OS X 10.7?", correct_answer: "A", ans1: "Lion", ans2: "Mountain Lion", ans3: "Snow Leopard", ans4: "Nyan Cat"
    Question.create body: "Which game development company made 'DrawSomething'?", correct_answer: "B", ans1: "Zyga", ans2: "OMGPop", ans3: "Epic Games", ans4: "Nintendo"
    Question.create body: "Zach Galifianakis hosts a talk show between what?", correct_answer: "D", ans1: "Brunch and afternoon", ans2: "His other projects", ans3: "All the things", ans4: "Some ferns"

  end

  def down
    Question.destroy_all
  end
end

