# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.first_or_create(username: "#{Rails.application.secrets.admin[:username]}", password: "#{Rails.application.secrets.admin[:password]}" )

Chatroom.first_or_create( title: 'books and Authors' , topic: 'Harry Potter')

Message.first_or_create(full_message: 'Hi! I liked all series about HP' , user_id: 1, chatroom_id: 1)
Message.first_or_create(full_message: 'What do you think about these books', user_id: 1, chatroom_id: 1)
