2.times do
  name = Faker::Music.genre
  description = Faker::Music.album
  ancestry = Faker::Number.within(range: 1..2)
  user_id = Faker::Number.within(range: 6..6)
  Category.create name: name, description: description, ancestry: ancestry, user_id: user_id
end
