# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env == 'production'
  (1..50).each do |i|
    Board.create(name:"ユーザー#{i}", title:"タイトル#{i}", body:"本文#{i}")
  end

  Tag.create([
    {name: 'おすすめ店舗紹介'},
    {name: '糖質制限お役立ち情報'},
    {name: 'このサイトに関するご要望'},
    {name: 'その他'}
  ])
end

if Rails.env == 'development'
  (1..50).each do |i|
    Board.create(name:"ユーザー#{i}", title:"タイトル#{i}", body:"本文#{i}")
  end

  Tag.create([
    {name: 'おすすめ店舗紹介'},
    {name: '糖質制限お役立ち情報'},
    {name: 'このサイトに関するご要望'},
    {name: 'その他'}
  ])
end