# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dress.destroy_all
puts 'Creating dress...'

user = User.create(email: "weysi.akin1@gmail.com", password: "123456")
dress = Dress.new(name: 'Abaya', color: 'Purple', size: 36, price: 50)
dress.remote_photo_url = 'https://image.shutterstock.com/image-photo/girl-black-gymnastic-suit-red-260nw-1559473322.jpg';
dress.user = user
dress.save!

dress = Dress.new(name: 'Kaftan', color: 'Green', size: 34, price: 60)
dress.remote_photo_url = 'https://fns.modanisa.com/r/pro2/2016/09/01/z-kaftanli-abiye-elbise--zumrut--dersaadet-235145-235145-6.jpg';
dress.user = user
dress.save!


dress = Dress.new(name: 'Chimajeogori', color: 'Silver', size: 33, price: 70)
dress.remote_photo_url = 'http://www.omoide111.com/images/chogori/abcdef188.JPG';
dress.user = user
dress.save!

dress = Dress.new(name: 'Kimono', color: 'Orange', size: 31, price: 100)
dress.remote_photo_url = 'https://image.shutterstock.com/image-photo/girl-black-gymnastic-suit-red-260nw-1559473322.jpg';
dress.user = user
dress.save!

dress = Dress.new(name: 'Kimono', color: 'Green', size: 40, price: 200)
dress.remote_photo_url = 'https://pds.exblog.jp/pds/1/201910/02/77/b0098077_21210858.jpg';
dress.user = user
dress.save!

dress = Dress.new(name: 'Kimono', color: 'Black', size: 35, price: 150)
dress.remote_photo_url = 'https://i.pinimg.com/564x/7c/73/dc/7c73dc35d5341254554bb8d3233317c7.jpg';
dress.user = user
dress.save!
