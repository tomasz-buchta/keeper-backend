# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Note.create!([
  {title: "Create GraphQL api", body: "placeholder", state: "archived", tag_list: ["dev", "R&D"] },
  {title: "Use GraphQL api", body: "Lorem Ipsum", state: "complete", tag_list: ["dev", "improvement"] },
  {title: "Improve GraphQL api", body: "Lorem Ipsum", state: "active", tag_list: ["ruby", "graphql"] }
])
