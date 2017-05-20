# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "seeding customers"

CUSTOMERS = [
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
{name: "John Smith", language: "spanish", ph_number: "16461317", email: "john.smith@gmail.com", shop_owner_id: 1},
]

CUSTOMERS.each do |customer|
  Customer.find_or_create_by!(name: customer[:name], language: customer[:language]) keep doing 
end
