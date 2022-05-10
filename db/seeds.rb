# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([
  {
    name: 'Admin',
    username: 'Admin',
    email: 'Admin@gmail.com',
    password: 'Admin',
    role: 'Admin'
  },{
    name: 'Anja',
    username: 'Anja',
    email: 'Anja@gmail.com',
    password: 'Anja'
  },{
    name: 'George',
    username: 'George',
    email: 'George@gmail.com',
    password: 'George'
  },{
    name: 'William',
    username: 'William',
    email: 'William@gmail.com',
    password: 'William'
  }
])


City.create!([
  {name:'Argentina'},
  {name:'Bolivia'},
  {name:'Brazil'},
  {name:'Chile'},
  {name:'Colombia'},
  {name:'Ecuador'},
  {name:'Guyana'},
  {name:'Paraguay'},
  {name:'Peru'},
  {name:'Suriname'},
  {name:'Uruguay'},
  {name:'Venezuela'},
  {name:'Mexico'},
  {name:'Canada'},
  {name:'Guatemala'},
  {name:'United States'},
  {name:'Jamaica'},
  {name:'Cuba'},
  {name:'Egypt'},
  {name:'Panama'}
])


RoomType.create!([
  { name:'Single', description: 'A room assigned to one person. May have one or more beds.', price: 300},
  { name:'Double', description: 'A room assigned to two people. May have one or more beds.', price: 200},
  { name:'Triple', description: 'A room that can accommodate three persons and has been fitted with three twin beds, one double bed and one twin bed or two double beds.', price: 200},
  { name:'Quad', description: 'A room assigned to four people. May have two or more beds.', price: 300},
  { name:'Queen', description: 'A room with a queen-sized bed. May be occupied by one or more people.', price: 400},
  { name:'King', description: 'A room with a king-sized bed. May be occupied by one or more people.', price: 200},
  { name:'Twin', description: 'A room with two twin beds. May be occupied by one or more people.', price: 400},
  { name:'Hollywood Twin Room', description: ' A room that can accommodate two persons with two twin beds joined together by a common headboard. Most of the budget hotels tend to provide many of these room settings which cater both couples and parties in two.', price: 100},
  { name:'Double-double', description: 'A Room with two double ( or perhaps queen) beds. And can accommodate two to four persons with two twin, double or queen-size beds.', price: 500},
  { name:'Studio', description: 'A room with a studio bed- a couch which can be converted into a bed. May also have an additional bed.', price: 400},
])