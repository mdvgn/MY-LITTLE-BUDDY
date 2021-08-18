User.destroy_all if Rails.env.development?
Skill.destroy_all if Rails.env.development?
Dwarf.destroy_all if Rails.env.development?

User.create!(
  email: "pass-partout@gmail.com",
  password: "azerty",
  first_name: "Passe",
  last_name: "Partout",
  dwarf: true,
  age: 54,
)

User.create!(
  email: "mimimaty@gmail.com",
  password: "azerty",
  first_name: "Mimi",
  last_name: "Maty",
  dwarf: true,
  age: 54,
)

User.create!(
  email: "chuck@gmail.com",
  password: "azerty",
  first_name: "Chuck",
  last_name: "Norris",
  dwarf: false,
  age: 51,
)

User.create!(
  email: "baboulinet@gmail.com",
  password: "azerty",
  first_name: "Vin",
  last_name: "Diesel",
  dwarf: false,
  age: 39,
)

Dwarf.create!(
  nickname: "Gimli",
  size: 140,
  gender: "male",
  description: "Je suis un nain très cochon et j'aime bien etre lancé contre des murs",
  price_per_hour: 69,
  location: "Paris",
)

Dwarf.create!(
  nickname: "Frodon",
  size: 130,
  gender: "male",
  description: "Enduisez-moi de vaseline et mettez moi par terre, je suis une limace!",
  price_per_hour: 420,
  location: "Nice",
)

puts "#{Dwarf.count} midgets created"

skills = %w(Lap\ dancer Stuntman Canonman Flying\ Midget Midget\ Tossing)

skills.each do |skill|
  Skill.create!(skill: skill)
end
