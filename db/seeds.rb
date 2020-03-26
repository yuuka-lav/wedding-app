# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# coding: utf-8

User.create!(
  email: 'test@test.com',
  name: 'テスト',
  password: '000000'
)
Hall.create!(
  [
    {
      name: '< Wedding大阪 >',
      place: '｜ 専門式場 / 大阪府 ｜ 収容人数：20 ~ 120人 |',
      image: File.open('./app/assets/images/wedding-6.jpg')
    },
    {
      name: '< Wedding難波 >',
      place: '｜ ホテル / 大阪府 ｜ 収容人数：80 ~ 200人 |',
      image: File.open('./app/assets/images/wedding-8.jpg')
    },
    {
      name: '< Wedding埼玉 >',
      place: '｜ ホテル / 埼玉県 ｜ 収容人数：100 ~ 180人 |',
      image: File.open('./app/assets/images/wedding-9.jpg')
    }
  ]
)