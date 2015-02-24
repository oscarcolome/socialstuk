# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'mariano', email: 'mariano@mariano.com', age: '38', gender: 'Male', bio: 'Just a musician/mathematic/philosopher/programmer/journalist', password: 'qwertyqwerty', password_confirmation: 'qwertyqwerty')
User.create(username: 'boris', email: 'boris@boris.com', age: '90', gender: 'Male', bio: 'Just an older guy with a beard and stuff', password: 'qwertyqwerty', password_confirmation: 'qwertyqwerty')
User.create(username: 'noplegate', email: 'noplegate@noplegate.com', age: '22', gender: 'Male', bio: 'A stupid teen', password: 'qwertyqwerty', password_confirmation: 'qwertyqwerty')
User.create(username: 'tiago', email: 'tiago@tiago.com', age: '40', gender: 'Male', bio: 'The "Go Ahead" teacher', password: 'qwertyqwerty', password_confirmation: 'qwertyqwerty')
User.create(username: 'vicente', email: 'vicente@vicente.com', age: '26', gender: 'Male', bio: 'Where people goes', password: 'qwertyqwerty', password_confirmation: 'qwertyqwerty')