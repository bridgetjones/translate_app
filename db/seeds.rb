# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# p "seeding customers"

puts "seeding the shopowners"
ApplicationRecord.transaction do


  2.times do |x|

    shopowner = ShopOwner.create(name: Faker::Name.name, shop_name: Faker::Company.name, address:Faker::Address.street_address,
    password: Faker::Lorem.characters(8),email: Faker::Internet.email)

    3.times do |x|
      promotion = Promotion.create(
        body: Faker::Lorem.sentence, english_promo: Faker::Lorem.word, shop_owner: shopowner)
      5.times do |x|
        phone_number = if x % 3 == 0
          "13055287402"
        elsif x % 3 == 1
          "17862188636"
        elsif  x % 3 == 2
          "19173273223"
        end
        Customer.create(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          ph_number: phone_number,
          language: x.odd? ? "english" : "spanish",
          shop_owner: shopowner,
          promotions: [promotion])
      end
    end
  end
  # byebug
  # raise StandardError
end
