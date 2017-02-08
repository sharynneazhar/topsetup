# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([
  { name: 'desk' },
  { name: 'chair' },
  { name: 'monitor' },
  { name: 'keyboard' },
  { name: 'mouse' },
  { name: 'speakers' },
  { name: 'headphones' },
  { name: 'case' },
  { name: 'motherboard' },
  { name: 'cpu' },
  { name: 'cpu cooler' },
  { name: 'memory' },
  { name: 'storage' },
  { name: 'graphics card' },
  { name: 'power supply' },
  { name: 'other' }
])
