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

# Hotel.create!([
#   { name: 'Howard Johnson Hotel & Casino', description: 'Featuring a garden with a swimming pool, a gym, and a restaurant, Howard Johnson Hotel & Casino offers rooms with free Wi-Fi and plasma TVs in Formosa. Free parking is provided. The breakfast was great. The pool is fantastic. Good relation price-quality.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/11307308.webp?k=f73bc53c8a5687dfb1104744aee6b9c482214e94fb047d14f26036c7adc1cf76&o=', city_id: '1' },
#   { name: 'Hotel Ronny', description: 'Hotel Ronny features accommodation in Formosa. This 2-star hotel offers a 24-hour front desk, a shared lounge and free WiFi. The hotel has family rooms. localization near to main road', rating: '2.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/92351390.webp?k=0146ecb0ae78a0f332a025a9ff74c2833462ac5bf9458569c79c409b28567643&o=', city_id: '1' },
#   { name: 'Hotel Sagarnaga', description: 'Strategically located, Hotel Sagarnaga stands in a touristic district where guests can find the Witches’ Market right around the corner, a variety of travel agencies a few steps away, ATMS currency... The staff are super friendly and will help with anything you need.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/122378080.webp?k=9d0e0864167810c853f2772774028fd8c3662d677ff99b971666f44995c48f7c&o=', city_id: '2' },
#   { name: 'Selina La Paz', description: 'Selina La Paz offers panoramic views of La Paz, features with free WiFi, 24 hours reception, a bar, common kitchen area, wellness area, yoga deck, cinema room and library.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/178798272.webp?k=4109c6f284cb1bb18c4b29764c9a17cc68f0d302371e80ec568938d0a90265e4&o=', city_id: '2' },
#   { name: 'ibis budget Sao Paulo Paulista', description: 'Ideally located only a 1-minute walk to Paulista Subway Station, Ibis Budget São Paulo Paulista is situated in Sao Paulo and features air-conditioned rooms.', rating: '2.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/117270569.webp?k=01aa0ea47e62409098703a397e7951fb9f1a5c37c1ae013059bc66281344ebe9&o=', city_id: '3' },
#   { name: 'Bourbon São Paulo Ibirapuera Convention Hotel', description: 'Just 400 metres from Eucaliptos subway station, Bourbon São Paulo Ibirapuera Convention Hotel offers facilities for people looking for agility and quality service.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/92663371.webp?k=667ddd1c05d04477843f8c870f4e76fabf5ca3d6506653618523bf055f4574b0&o=', city_id: '3' },
#   { name: 'Holiday Inn Santiago - Airport Terminal, an IHG Hotel', description: 'The Holiday Inn Santiago Airport provides accommodation right opposite to the International Airport of Santiago, Comodoro Arturo Merino Benítez International Airport.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/252247986.webp?k=7a39365f697099419ef3b3219f86f79f5275e07dc429fc32c23742c31cd73b49&o=', city_id: '4' },
#   { name: 'La Quinta by Wyndham Santiago Aeropuerto', description: 'In a prime location in the Pudahuel district of Santiago, La Quinta by Wyndham Santiago Aeropuerto is 4-star hotel situated just a 5-minute drive from the airport.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/283721879.webp?k=ffe6bd78e9eb81851e777868357806d225c2962c883427cdd7554d0a5e74144b&o=', city_id: '4' },
#   { name: 'Hotel Habitel Select', description: 'Featuring a spa, a fitness centre and a restaurant, Hotel Habitel Select offers rooms with free WiFi and flat-screen TVs in Bogota. Free parking is provided, and there is a garden.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/299194474.webp?k=d5ea0b7a77df302fca48374e18fb24cd6856374ac174b6dde197e7cc2a9169f8&o=', city_id: '5' },
#   { name: 'Hilton Garden Inn Bogota Airport', description: 'Located in the Fontibon district of Bogotá, Hilton Garden Inn Bogota Airport offers rooms with free WiFi. The hotel features a spa experience, with its hot tub, sauna and fitness centre.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/164215830.webp?k=3f74ca8d44445e21c7934595d07487e69ed6caf9d6fd2916a662cb6984d67dcc&o=', city_id: '5' },
#   { name: 'Hotel David', description: 'Hotel David offers accommodation in Alameda Park in Quito. Guests can enjoy the on-site restaurant with panoramic views of the city, and karaoke bar. Quitos Historical Centre is 10 minutes away.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/91773682.webp?k=c97bf85c1fce93050d5031037d920033118bba657a6a60b9d734f624974d2c1a&o=', city_id: '6' },
#   { name: 'Hostal Yumbo Imperial', description: 'Hostal Yumbo Imperial is located 2 minutes walk from Quito Cathedral and 100 metres from Casa Sucre Museum. It features Colonial architecture and free WiFi access.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/94103790.webp?k=c8d7fff1ee147e00a2150a4dbda0787e85e6137a51925eb5093316100fcba900&o=', city_id: '6' },
#   { name: 'Ramada by Wyndham Princess Georgetown', description: 'Boasting a swimming pool, a casino and a spa, Ramada Georgetown Princess Hotel offers stylish accommodation in East Bank Demerara. Breakfast is provided, and a there is a restaurant.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/135132180.webp?k=573700d96e35356fac78324b64fb488a6b97fa59d18baf8097b52007fb3609e6&o=', city_id: '7' },
#   { name: 'El Dorado Inn', description: 'Featuring free WiFi throughout the property, El Dorado Inn offers accommodation in Georgetown. Guests can enjoy the on-site bar. Every room at this hotel is air conditioned and has a flat-screen TV.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/135791206.webp?k=093859c0bfe273cde88a48ba7e5214c1b20c34bc1f04aedb36fbcf2bbfccbc66&o=', city_id: '7' },
#   { name: 'Dazzler by Wyndham Asuncion', description: 'Boasting a year-round outdoor pool and spa centre, Dazzler by Wyndham Asuncion features free WiFi access. Guests at the hotel can enjoy a drink at the bar.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/262267055.webp?k=ff5613877ebdc2bb3fcce6402104889305a11c8ee9540b3d88ff378a8e06fb7a&o=', city_id: '8' },
#   { name: 'ibis Asuncion', description: 'Featuring a shared lounge, bar, on-site dining and free WiFi, ibis Asuncion is located in the capital city, 3.5 km from Asuncion Zoo and Bothanical Garden and 5 km from United Nations Information...', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/202657074.webp?k=80c9641b764a3cbe41724164ca87f057f374e091adcf48b5314e72803285ed70&o=', city_id: '8' },
#   { name: 'Holiday Inn - Lima Airport, an IHG Hotel ', description: 'Situated in Lima, just in front of the airport the exclusive Holiday Inn - Lima Airport features accommodation with a restaurant, free private parking, fitness centre and bar.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/273753407.webp?k=ea597a94f4b12bc551b19be8a52bc8f949ac5a95c83de49b68ded6225d76f707&o=', city_id: '9' },
#   { name: 'Costa del Sol Wyndham Lima Airport', description: 'This 4-star hotel is conveniently located within Limas Jorge Chavez International Airport. It includes an on-site Spa Express. Very clean and comfortable Friendly, helpful staff Location right across from airport Breakfast starting at 4am is great for early mornings flights.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/52937614.webp?k=cb1b1ef87990c9906a9d6f4d1a42835756818d20554525397a1f470434a321ae&o=', city_id: '9' },
#   { name: 'Torarica Resort', description: 'Featuring a garden, a terrace and an outdoor swimming pool, Torarica Resort offers free Wi-Fi and restaurant in Paramaribo. The commercial and financial area is a 15-minute walk. ', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/254068434.webp?k=0e6ce8ab6e76fbe80f063445c81b44c55905aceda344f3fad32ab93f9ee39d8d&o=', city_id: '10' },
#   { name: 'Royal Torarica', description: 'Located 500 metres from the historic centre and a 15-minute walk from the commercial and financial area, Royal Torarica features a fitness centre, and outdoor swimming pool and a restaurant in...', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/31487054.webp?k=b3d664a61d0a6a41b12056a0b78139f303fc2a4dcb84d4f40ede521ca320c54a&o=', city_id: '10' },
#   { name: 'Dazzler by Wyndham Montevideo', description: 'Featuring an outdoor swimming pool, a fitness centre, and a spa, Dazzler by Wyndham Montevideo offers free WiFi and buffet breakfasts in Montevideo.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/263852457.webp?k=7d0074bd05eee63ea9a60dfc7cc8f60a6df085393f37f9167fb912a6a86356cc&o=', city_id: '11' },
#   { name: 'Vivaldi Hotel Loft Punta Carretas', description: 'Vivaldi Hotel Loft Punta Carretas offers elegant rooms with modern amenities, free WiFi access and contemporary décor in Montevideo.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/68372224.webp?k=35905e596794d84f08dcd1ea8eed0b6d809e39b052091562986b434388993750&o=', city_id: '11' },
#   { name: 'Eurobuilding Hotel & Suites Caracas', description: 'Featuring a swimming pool, a fitness centre and a sauna, Eurobuilding Hotel & Suites Caracas offers stylish rooms in the financial district. The city centre is a 15-minute drive away.', rating: '5.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/2212790.webp?k=0de14666b412c0417523457c3bd90a9baeb6406e66b10a98878937f87e0060d1&o=', city_id: '12' },
#   { name: 'Hotel Tamanaco Caracas', description: 'Hotel Tamanaco Caracas has a restaurant, outdoor swimming pool, a bar and garden in Caracas. Boasting family rooms, this property also provides guests with a sun terrace.', rating: '5.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/318224128.webp?k=bfbaed3b2af4fb46e26f64c19f4d51de99a00f7aa56bb8fdb1e7f85f2094675b&o=', city_id: '12' },
#   { name: 'Camino Real Aeropuerto', description: 'Ideally situated opposite Terminal 1 of Mexico City Airport, this hotel offers luxurious services and comfortable accommodation.', rating: '5.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/339692364.webp?k=4a6cc52235941d44feefa15ccbb22f86fa06c404c49f9f79ae724ebac29bd6d5&o=', city_id: '13' },
#   { name: 'We Hotel Aeropuerto', description: 'Conveniently in front of Benito Juarez International Airport and offering easy access to downtown Mexico City attractions, including the Zona Rosa, this hotel provides a free 24-hour airport shuttle.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/87558514.webp?k=1fc7f42a4b2851256093741fdd147fc766a5a86cbfd95b578de31f8cf122d6d9&o=', city_id: '13' },
#   { name: 'Comfort Inn Regina', description: 'Featuring a daily hot breakfast, this Regina hotel is located 10 minutes drive from the Regina International Airport. Free WiFi is available throughout the property.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/276417676.webp?k=4e8e89c35403332244230b4379a2afbd5e0d5f3c983893b6465d34bf99351eb7&o=', city_id: '14' },
#   { name: 'Ramada by Wyndham Emerald Park/Regina East', description: 'Offering an indoor pool, two waterslides, and hot tub, Ramada by Wyndham Emerald Park/Regina East is located in Emerald Park. Each room features a refrigerator, microwave, and stovetop.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/51732443.webp?k=571cf12d043528f1add5dfbc4150925901f046b8c5ac06fd4509fd378bbb68e5&o=', city_id: '14' },
#   { name: 'Selina Antigua', description: 'Featuring a shared lounge and bar, Selina Antigua is set in Antigua Guatemala, a 3-minute walk from Santa Catalina Arch.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/245191643.webp?k=8c184869d6b93c288ea00a9b0e0e08680059441c3aa6fb1bf275e3e081108df6&o=', city_id: '15' },
#   { name: 'Meson de Maria ', description: 'Just 200 metres from Antiguas Central Park, Villa Meson in Exclusive Condominium offers city views, free private parking and a charming central courtyard filled with plants.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/18345407.webp?k=4779ad6589eb2e470b2bc2266d25a9514b5cb06b8e314b3d1b26786f49a6a05e&o=', city_id: '15' },
#   { name: 'Pod Times Square', description: 'Located 400 metres from Restaurant Row in New York, Pod Times Square features a restaurant, bar and free WiFi throughout the property. Rooms are equipped with a flat-screen TV.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/129148007.webp?k=8a4b3f822291e929dcb22c46df661d38ca8cfc316c19bfb5a468565392c80c5e&o=', city_id: '16' },
#   { name: 'The New Yorker, A Wyndham Hotel', description: 'This Art-Deco inspired high-rise hotel offers a midtown location and 24-hour dining. Times Square is less than 1 km from the property and Pen Station is 162 metres away.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/83778539.webp?k=5bf5ef209088046ab7b0e38efcc23f4d58e7b65ab78144f9ca315aba1482e230&o=', city_id: '16' },
#   { name: 'S Hotel Jamaica - Boutique All Inclusive', description: 'Set in Montego Bay, S Hotel Jamaica - Boutique All Inclusive is a 4-star hotel that has a 24-hour front desk, swimming pools, sky pools, bars, room service and free WiFi.', rating: '5.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/242464101.webp?k=f34fb840add26b32713877653518b590d198c6604f190478ca34ebfa3270f9d2&o=', city_id: '17' },
#   { name: 'Tobys Resort', description: 'Tobys Resort offers rooms with a private balcony featuring either poolside or garden views. This resort features 2 outdoor salt water pools.', rating: '3.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/171498343.webp?k=3fa432a96cd7a8662f0e99fbdca2d6bae67dd240b7a984792ec752519bf011d6&o=', city_id: '17' },
#   { name: 'La AKDmia Cuba', description: 'Situated in Havana, 1.8 km from Playa del Chivo, La AKDmia Cuba features air-conditioned accommodation and a shared lounge.', rating: '0.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/214812751.webp?k=fa494ae988668525fc676ff07741ebc9e0cae3e16d6160ec75b3d7b751e0255a&o=', city_id: '18' },
#   { name: 'Casa Pedro-María', description: 'Featuring a restaurant, a bar as well as a shared lounge, Casa Pedro-María is set in Havana, 1.5 km from Playa del Chivo.', rating: '2.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/199931886.webp?k=2390c57b1a341506651a97d229379f8ffa6d3b66ccd47a7d7b5274e1afa1c1a9&o=', city_id: '18' },
#   { name: 'Novotel Cairo Airport', description: 'Novotel Cairo Airport offers 2 outdoor pools in the landscaped garden, free Wi-Fi and free airport shuttle. It is a 10-minute drive from the International Convention and Exhibition Centre.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/277751146.webp?k=63eda20aad8274c54023de0520a80078d2ea46ac90595fa13c1ff5a16a953007&o=', city_id: '19' },
#   { name: 'Steigenberger Hotel El Tahrir Cairo', description: 'Situated in Cairo in the Cairo Governate Region, 200 metres from The Egyptian Museum, Steigenberger El Tahrir features an outdoor pool and sauna. Guests can enjoy the on-site restaurant.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/87844688.webp?k=37b63c1537469b834e42c56e7487c2504babd63efcb37eacc31ea12b7089afc6&o=', city_id: '19' },
#   { name: 'Riu Plaza Panamá', description: 'Located in the business district, Riu Plaza Panama offers stylish rooms with free Wi-Fi. It features an outdoor pool with hot tub.', rating: '5.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/306373203.webp?k=6397f5c83bfda384f1cfb1810f201aa099afbc97ff23764c1e34544f5e852173&o=', city_id: '20' },
#   { name: 'Plaza Paitilla Inn', description: 'Plaza Paitilla Inn offers panoramic views of Panama Bay and has a lounge bar, outdoor pool and sun terraces. The property also has an equipped business centre and a gym.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/146638586.webp?k=32e368487c93bc4331968af7da73c99e0673408aaf60ce4090f6763a1177fcae&o=', city_id: '20' },  
# ])
