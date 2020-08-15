# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "Sam", email: "test@test", password_digest: "test")
# Project.create(name: "Sam Fam", manager_id: 284b5a7f-b69d-4772-8ea8-2ee9c7bcfa61)
# Project.create(name: "Sam Gam", manager_id: sam.id)
# t.string "notes_type"
# t.uuid "notes_id"

# Description.create(notes_type: "Alert", notes_id: "1298bba7-1a20-424d-8155-013f4acd2bc2")
# Description.create(notes_type: "Item", notes_id: "1d00c3cb-35e5-4ad6-9b00-43e865b5b5f4")
