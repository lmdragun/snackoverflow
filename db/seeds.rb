# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.delete_all
questions = Question.create([
 { title:'Rails Template is Missing', body:'I keep getting this error and I don\'t know what\'s wrong. :(' },
 { title:'Ruby: Method Argument Error', body:"I'm not sure what this means and/or how to fix it." },
 { title:'fatal: Not a git repository (or any of the parent directories): .git', body:'This happens when I run `git status`' }
])

Answer.delete_all
Answer.create([
  { body:'Did you create a view file in app/views/ ? ', question:questions[0] },
  { body:'You need to define a local variable', question:questions[1] }
])

