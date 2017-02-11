# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  email: 'lhdiff@yahoo.com',
  password: 'password',
  username: 'Diff'
)
User.create(
  email: 'lisaleesa@gmail.com',
  password: 'password',
  username: 'Lisa'
)
User.create(
  email: 'Bhernandez@yahoo.com',
  password: 'password',
  username: 'Bran'
)
Team.create(
  teamname: 'Lexington High Junior Varsity Boys Hockey',
  coach: 'Matt Piccarillo',
  schoolname: 'Lexington High School',
  streetaddress: '251 Waltham Street',
  town: 'Lexington',
  state: 'MA',
  zip: '02420',
  img: 'IMG_1067.jpg',
  user_id: 1,
  description: 'A young hockey team with a lot of heart'
)
Team.create(
  teamname: 'Deco\'s Women\'s Basketball',
  coach: 'Dana Friar',
  schoolname: 'Fidelity House',
  streetaddress: '16 Medford Street',
  town: 'Arlington',
  state: 'MA',
  zip: '02174',
  img: 'basketball.gif',
  user_id: 2,
  description: 'A Team of Hot Shot Women'
)
Team.create(
  teamname: 'Diamond Diva\'s',
  coach: 'Peggy Barons',
  schoolname: 'Fiske',
  streetaddress: 'Colony Road',
  town: 'Lexington',
  state: 'MA',
  zip: '02420',
  img: 'womenbball.jpg',
  user_id: 2,
  description: 'A Team of Cool Mom\'s'
)

Player.create(
  first_name: 'Brandon',
  last_name: 'Hernandez',
  position: 'Defenseman',
  photo: 'IMG_2715.jpg',
  video: '',
  fav_pregame_meal: 'Turkey Terrific',
  team_id: 1,
  user_id: 3,
  fav_pregame_drink: 'Gatorade'
)

Player.create(
  first_name: 'Meeko',
  last_name: 'Hernandez',
  position: 'Mascot',
  photo: 'IMG_2732.jpg',
  video: '',
  team_id: 1,
  user_id: 2,
  fav_pregame_meal: 'Pupperoni',
  fav_pregame_drink: 'Water'
)
