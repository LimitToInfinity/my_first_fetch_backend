# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# resolution1 = Resolution.create({ title: "hamster", body: "My first hamster!!!" })

resolution2 = Resolution.create({ title: "be good", body: "do good things daily" })

Goal.create({ difficulty: 5, resolution: resolution2 })
Goal.create({ difficulty: 1, resolution: resolution2 })