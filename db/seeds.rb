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
megan = User.create(username: "megan-s", email: "megan@flatiron.com")
jdoe = User.create(username: "john-doe", email: "johndoe@flatiron.com")
janedoe = User.create(username: "jane-doe", email: "janedoe@flatiron.com")

q1 = Question.create(title: "Favorite Interview Question", content: "Hi, I'm trying to collect some good interview questions that I can start my practice with, can anyone give me their favorite?  Don't make it too hard! :)", user_id: kara.id)
q2 = Question.create(title: "Blog Posts - General Recs", content: "Hey, so I'm in Mod 1 right now and we have our first blog posts coming up.  I am having trouble figuring out where to start.  Can someone in a later mod please give me some advice?  Thanks!", user_id: jdoe.id)
q3 = Question.create(title: "Having trouble with reduce method", content: "Ok, so I continue to struggle with the reduce method in Ruby.  Here are two examples from Ruby docs of what I can't understand: (5..10).reduce(:+), also (5..10).reduce(1) { | product, n | product * n }.  I'm not sure how symbol the used, and what does it mean when you start with a passed in number?", user_id: kara.id)
q4 = Question.create(title: "Final Project idea", content: "Hey guys! So for my final project I am thinking about making my own version of a app that Zillow used while I worked there, called the Karma Wall.  It allows you to send 'karma' and compliments to fellow colleagues, and well as join groups with others based on common interests.  Thoughts?", user_id: ian.id )
q5 = Question.create(title: "Learn.co feature - friends bar", content: "Any idea how to permanently minimize this friends bar feature on Learn.co, it keeps popping up in the lower right corner..", user_id: jdoe.id)
q6 = Question.create(title: "Switching from Learn IDE to local", content: "I'm having trouble switching from Learn IDE to my local terminal, I thought I did it but running 'learn' inside the lab's directory from terminal isn't working", user_id: janedoe.id)
q7 = Question.create(title: "Cabybara/Rspec - yay or nay", content: "Doing the Rails labs with Capybara right now, and oh man do those tests drive me crazy.  Do you guys recommend chasing the green lights or is it fine to move on if I get the features on rendering correctly on the web page??", user_id: justin.id )
q8 = Question.create(title: "Interview Prep book", content: "Wondering if you guys have had any good interview prep books recommended, I'm looking on Amazon right now and there are a ton.", user_id: brian.id)
# q9 = Question.create(title: "", content: "", user_id: )
# q10 = Question.create(title: "", content: "", user_id: )
# q11 = Question.create(title: "", content: "", user_id: )
# q12 = Question.create(title: "", content: "", user_id: )
# q13 = Question.create(title: "", content: "", user_id: )
# q14 = Question.create(title: "", content: "", user_id: )
# q15 = Question.create(title: "", content: "", user_id: )
# q16 = Question.create(title: "", content: "", user_id: )
# q17 = Question.create(title: "", content: "", user_id: )
# q18 = Question.create(title: "", content: "", user_id: )
# q19 = Question.create(title: "", content: "", user_id: )
# q20 = Question.create(title: "", content: "", user_id: )

a1 = Answer.create(content: "Make sure you know FizzBuzz and Fibonacci, as those are very classic interview questions", user_id: alex.id, question_id: q1.id )
a2 = Answer.create(content: "I highly recommend LeetCode for practice intervew questions!", user_id: justin.id , question_id: q1.id )
a3 = Answer.create(content: "Ian, that's a great idea!!!  Love it.", user_id: krista.id, question_id: q4.id)
a4 = Answer.create(content: "I made a Chrome extension for that!!  Slack me and I'll send you a link to download, it's not on the public Chrome webstore", user_id: kara.id, question_id: q5.id)
a5 = Answer.create(content: "Jane, I would start over and follow all of the instructions from the Manual Setup page instructions - https://help.learn.co/en/articles/900121-mac-osx-manual-environment-set-up")
a6 = Answer.create(content: "Don't chase the green lights!!! You will go crazy...", user_id: krista.id, question_id: q7.id)

c1 = Comment.create(content: "Define hard haha", user_id: alex.id , commentable_id: q1.id , commentable_type: q1.class.name)
c2 = Comment.create(content: "Teach me how to do extensions!!", user_id: ian.h, commentable_id: a4.id, commentable_type: a4.class.name)

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

qt1 = QuestionTag.create(question_id: q1.id, tag_id: t9.id)
qt2 = QuestionTag.create(question_id: q1.id, tag_id: t15.id)
qt3 = QuestionTag.create(question_id: q2.id, tag_id: t13.id)
qt4 = QuestionTag.create(question_id: q3.id, tag_id: t1.id)
qt5 = QuestionTag.create(question_id: q3.id, tag_id: t5.id)
qt6 = QuestionTag.create(question_id: q4.id, tag_id: t11.id)
qt7 = QuestionTag.create(question_id: q4.id, tag_id: t7.id)
qt8 = QuestionTag.create(question_id: q5.id, tag_id: t12.id)
qt9 = QuestionTag.create(question_id: q7.id, tag_id: t10.id)
qt10 = QuestionTag.create(question_id: q7.id, tag_id: t4.id)
qt11 = QuestionTag.create(question_id: q6.id, tag_id: t12.id)
qt12 = QuestionTag.create(question_id: q6.id, tag_id: t3.id)
qt13 = QuestionTag.create(question_id: q8.id, tag_id: t9.id)


v1 = Vote.create(answer_id: a4.id, user_id: alex.id)
v2 = Vote.create(answer_id: a4.id, user_id: ian.id)
v3 = Vote.create(answer_id: a1.id, user_id: kara.id)
