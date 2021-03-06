# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  [
    {
      :name => 'test1',
      :introduction => 'Hello',
      :email => 'ageage@agege.com',
      :password => '000000',
    },
    {
      :name => 'test2',
      :introduction => 'I\'m Taro.',
      :email => 'taro@test.com',
      :password => '111111',
    },
   ]
)

Item.create(
  [
    {
      :user_id => '1',
      :category => '1',
    },
  ]
)