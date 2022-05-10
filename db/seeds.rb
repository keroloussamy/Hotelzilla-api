# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([
  {
    id: 1,
    name: 'Admin',
    username: 'Admin',
    email: 'Admin@gmail.com',
    password: 'Admin',
    role: 'Admin'
  },{
    id: 2,
    name: 'Anja',
    username: 'Anja',
    email: 'Anja@gmail.com',
    password: 'Anja'
  },{
    id: 3,
    name: 'George',
    username: 'George',
    email: 'George@gmail.com',
    password: 'George'
  },{
    id: 4,
    name: 'William',
    username: 'William',
    email: 'William@gmail.com',
    password: 'William'
  }
])


City.create!([
  {id:1, name:'Argentina'},
  {id:2, name:'Bolivia'},
  {id:3, name:'Brazil'},
  {id:4, name:'Chile'},
  {id:5, name:'Colombia'},
  {id:6, name:'Ecuador'},
  {id:7, name:'Guyana'},
  {id:8, name:'Paraguay'},
  {id:9, name:'Peru'},
  {id:10, name:'Suriname'},
  {id:11, name:'Uruguay'},
  {id:12, name:'Venezuela'},
  {id:13, name:'Mexico'},
  {id:14, name:'Canada'},
  {id:15, name:'Guatemala'},
  {id:16, name:'United States'},
  {id:17, name:'Jamaica'},
  {id:18, name:'Cuba'},
  {id:19, name:'Egypt'},
  {id:20, name:'Panama'}
])


RoomType.create!([
  {id:1, name:'Single', description: 'A room assigned to one person. May have one or more beds.', price: 300},
  {id:2, name:'Double', description: 'A room assigned to two people. May have one or more beds.', price: 200},
  {id:3, name:'Triple', description: 'A room that can accommodate three persons and has been fitted with three twin beds, one double bed and one twin bed or two double beds.', price: 200},
  {id:4, name:'Quad', description: 'A room assigned to four people. May have two or more beds.', price: 300},
  {id:5, name:'Queen', description: 'A room with a queen-sized bed. May be occupied by one or more people.', price: 400},
  {id:6, name:'King', description: 'A room with a king-sized bed. May be occupied by one or more people.', price: 200},
  {id:7, name:'Twin', description: 'A room with two twin beds. May be occupied by one or more people.', price: 400},
  {id:8, name:'Hollywood Twin Room', description: ' A room that can accommodate two persons with two twin beds joined together by a common headboard. Most of the budget hotels tend to provide many of these room settings which cater both couples and parties in two.', price: 100},
  {id:9, name:'Double-double', description: 'A Room with two double ( or perhaps queen) beds. And can accommodate two to four persons with two twin, double or queen-size beds.', price: 500},
  {id:10, name:'Studio', description: 'A room with a studio bed- a couch which can be converted into a bed. May also have an additional bed.', price: 400},
])