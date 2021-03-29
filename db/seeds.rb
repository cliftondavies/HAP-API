# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hike1 = Hike.create!(
  name: 'Coast',
  main_image: 'https://picsum.photos/id/1050/600/660',
  thumbnail_image: 'https://picsum.photos/id/1050/200/200',
)

hike2 = Hike.create!(
  name: 'Fjord',
  main_image: 'https://picsum.photos/id/1015/600/660',
  thumbnail_image: 'https://picsum.photos/id/1015/200/200',
)

hike3 = Hike.create!(
  name: 'Mountain',
  main_image: 'https://picsum.photos/id/1018/600/660',
  thumbnail_image: 'https://picsum.photos/id/1018/200/200',
)
