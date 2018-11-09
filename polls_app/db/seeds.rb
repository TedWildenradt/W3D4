# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  
ActiveRecord::Base.transaction do
  User.destroy_all
  user1 = User.create!(username: 'CJ')
  user2 = User.create!(username: 'Flarnie')
  user3 = User.create!(username: 'Jeff')
  user4 = User.create!(username: 'Georges St. Pierre')
  user5 = User.create!(username: 'Ned')
  
  Poll.destroy_all
  poll1 = Poll.create!(author_id: user1.id, title: "Poll 1: San Francisco")
  poll2 = Poll.create!(author_id: user1.id, title: "Poll 1: App Academy")
  poll3 = Poll.create!(author_id: user2.id, title: "Poll 1: Your Life")
  
  Question.destroy_all
  q1 = Question.create!(poll_id: 1, text: "How do you like the weather?")
  q2 = Question.create!(poll_id: 1, text: "How much is your rent?")
  q3 = Question.create!(poll_id: 2, text: "How do you like App Academy?")
  q4 = Question.create!(poll_id: 2, text: "Are you getting enough sleep?")
  q5 = Question.create!(poll_id: 3, text: "How's life?")
  q6 = Question.create!(poll_id: 3, text: "Where are you from?")
  
  AnswerChoice.destroy_all
  choice1 = AnswerChoice.create!(question_id: 1, text: "The weather is too hot")
  choice2 = AnswerChoice.create!(question_id: 1, text: "The weather is too cold")
  choice3 = AnswerChoice.create!(question_id: 2, text: "Rent is too damn high")
  choice4 = AnswerChoice.create!(question_id: 2, text: "I want to move to Wisconsin")
  choice5 = AnswerChoice.create!(question_id: 3, text: "App Academy is cool")
  choice6 = AnswerChoice.create!(question_id: 3, text: "App Academy is tough")
  choice7 = AnswerChoice.create!(question_id: 4, text: "No sleep, I am a walking zombie")
  choice8 = AnswerChoice.create!(question_id: 4, text: "I am getting enough sleep and failing")
  choice9 = AnswerChoice.create!(question_id: 5, text: "Life is amazing")
  choice10 = AnswerChoice.create!(question_id: 5, text: "Life is not good")
  choice11 = AnswerChoice.create!(question_id: 6, text: "I am from Santa Cruz")
  choice12 = AnswerChoice.create!(question_id: 6, text: "I am from Seoul")
  
  Response.destroy_all
  response1 = Response.create!(user_id: user5.id, answer_choice_id: 1)
  response2 = Response.create!(user_id: user5.id, answer_choice_id: 3)
  response3 = Response.create!(user_id: user5.id, answer_choice_id: 5)
  response4 = Response.create!(user_id: user5.id, answer_choice_id: 7)
  response5 = Response.create!(user_id: user5.id, answer_choice_id: 9)
  response6 = Response.create!(user_id: user5.id, answer_choice_id: 11)
  response7 = Response.create!(user_id: user4.id, answer_choice_id: 2)
  response8 = Response.create!(user_id: user4.id, answer_choice_id: 4)
  response9 = Response.create!(user_id: user4.id, answer_choice_id: 6)
  response10 = Response.create!(user_id: user4.id, answer_choice_id: 8)
  response11 = Response.create!(user_id: user4.id, answer_choice_id: 10)
  response12 = Response.create!(user_id: user4.id, answer_choice_id: 12)
end