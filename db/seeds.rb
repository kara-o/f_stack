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
Vote.destroy_all

kara = User.create(username: "kara-o", email: "kara@flatiron.com")
alex = User.create(username: "alex-o", email: "alex@flatiron.com")
ian = User.create(username: "ian-h", email: "ian@flatiron.com")
krista = User.create(username: "krista-l", email: "krista@flatiron.com")
ren = User.create(username: "ren-b", email: "ren@flatiron.com")
justin = User.create(username: "justin-m", email: "justin@flatiron.com")
brian = User.create(username: "brian-l", email: "brian@flatiron.com")
megan = User.create(username: "megan-s", email: "megan@gmail.com")

q1 = Question.create(title: "", content: "", user_id: "")
q2 = Question.create(title: "", content: "", user_id: "")
q3 = Question.create(title: "", content: "", user_id: "")
q4 = Question.create(title: "", content: "", user_id: "")
q5 = Question.create(title: "", content: "", user_id: "")
q6 = Question.create(title: "", content: "", user_id: "")
q7 = Question.create(title: "", content: "", user_id: "")
q8 = Question.create(title: "", content: "", user_id: "")
q9 = Question.create(title: "", content: "", user_id: "")
q10 = Question.create(title: "", content: "", user_id: "")
q11 = Question.create(title: "", content: "", user_id: "")
q12 = Question.create(title: "", content: "", user_id: "")
q13 = Question.create(title: "", content: "", user_id: "")
q14 = Question.create(title: "", content: "", user_id: "")
q15 = Question.create(title: "", content: "", user_id: "")
q16 = Question.create(title: "", content: "", user_id: "")
q17 = Question.create(title: "", content: "", user_id: "")
q18 = Question.create(title: "", content: "", user_id: "")
q19 = Question.create(title: "", content: "", user_id: "")
q20 = Question.create(title: "", content: "", user_id: "")

a1 = Answer.create(content: "", user_id: , question_id: )
a2 = Answer.create(content: "", user_id: , question_id: )

c1 = Comment.create(content: "", user_id: , commentable_id: , commentable_type: )

t1 = Tag.create(name: "Ruby")
t2 = Tag.create(name: "JavaScript")
t3 = Tag.create(name: "Module 1")
t4 = Tag.create(name: "Module 2")
t5 = Tag.create(name: "Module 3")
t6 = Tag.create(name: "Module 4")
t7 = Tag.create(name: "Module 5")
t8 = Tag.create(name: "GitHub")
t9 = Tag.create(name: "Interview Prep")
t10 = Tag.create(name: "Rails")
t11 = Tag.create(name: "Final Project")
t12 = Tag.create(name: "Learn.co")
t13 = Tag.create(name: "Blogs")
t14 = Tag.create(name: "Miscellaneous")
t15 = Tag.create(name: "White Board")

qt1 = QuestionTag.create(question_id: , tag_id: )
qt2 = QuestionTag.create(question_id: , tag_id: )

# v1 = Vote.create(answer_id: a2.id, user_id: alex.id)
# v2 = Vote.create(answer_id: a2.id, user_id: birdie.id)
# v3 = Vote.create(answer_id: a1.id, user_id: kara.id)
