# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Question.destroy_all
Answer.destroy_all
Comment.destroy_all
Tag.destroy_all
QuestionTag.destroy_all

kara = User.create(username: "kara-o", email: "kara@flatiron.com")
alex = User.create(username: "alex-o", email: "alex@flatiron.com")
rooney = User.create(username: "rooney-o", email: "rooney@flatiron.com")
birdie = User.create(username: "birdie-o", email: "birdie@flatiron.com")

q1 = Question.create(title: "Ruby or JS?", content: "Do you prefer Ruby or JS?", user_id: 1)
q2 = Question.create(title: "Favorite method?", content: "What is your favorite method?", user_id: 2)

a1 = Answer.create(content: "I like beef!", user_id: 3, question_id: 1)

c1 = Comment.create(content: "That is a silly answer, #{rooney.username}, the answer is chicken!", user_id: birdie.id, commentable_id: a1.id, commentable_type: a1.class.name )

t1 = Tag.create(name: "Ruby")
t2 = Tag.create(name: "JS")

qt1 = QuestionTag.create(question_id: 1, tag_id: 1)
qt2 = QuestionTag.create(question_id: 2, tag_id: 2)
