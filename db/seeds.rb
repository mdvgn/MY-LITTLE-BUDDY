User.destroy_all if Rails.env.development?
Skill.destroy_all if Rails.env.development?
Dwarf.destroy_all if Rails.env.development?


pass = Dwarf.create!(
  nickname: "Pass2Par",
  size: 130,
  gender: "male",
  description: "je passe ou vous voulez, quand vous-voulez, nain'porte ou",
  price_per_hour: 250,
  location: "2 rue boyer, Nice",
  user: User.create!(
    email: "pass-partout@gmail.com",
    password: "azerty",
    first_name: "Passe",
    last_name: "Partout",
    is_dwarf: true,
    age: 54)
)
pass.photos.attach(io: File.open('app/assets/images/home/home/top_7/passe-partout.jpg'), filename: 'passpartout.jpg', content_type:'image/jpg')

mimi = Dwarf.create!(
  nickname: "mimimaty",
  size: 80,
  gender: "female",
  description: "naine gardienne",
  price_per_hour: 20,
  location: " 4 rue du paradis, Nice",
  user: User.create!(
    email: "mimimaty@gmail.com",
    password: "azerty",
    first_name: "Mimi",
    last_name: "Maty",
    is_dwarf: true,
    age: 54)
)
mimi.photos.attach(io: File.open('app/assets/images/home/home/top_7/mimi-mathy.jpg'), filename: 'mimi.jpg', content_type:'image/jpg')


mini = Dwarf.create!(
  nickname: "minimoi",
  size: 80,
  gender: "male",
  description: "une petite part de vous",
  price_per_hour: 280,
  location: " 8 rue oscar 2, Nice",
  user: User.create!(
    email: "minimoi@gmail.com",
    password: "azerty",
    first_name: "Mini",
    last_name: "Moi",
    is_dwarf: true,
    age: 54)
)

mini.photos.attach(io: File.open('app/assets/images/home/home/top_7/minimoi.jpg'), filename: 'mini.jpg', content_type:'image/jpg')


captnain = Dwarf.create!(
  nickname: "CaptNain",
  size: 144,
  gender: "male",
  description: "La justice est aveugle et petite",
  price_per_hour: 300,
  location: " palais de justice, Nice",
  user: User.create!(
    email: "captnain.avenger@gmail.com",
    password: "azerty",
    first_name: "captnain",
    last_name: "avenger",
    is_dwarf: true,
    age: 34)
)
captnain.photos.attach(io: File.open('app/assets/images/home/home/top_7/captainameridwarf.jpg'), filename: 'captnain.jpg', content_type:'image/jpg')


User.create!(
  email: "chuck@gmail.com",
  password: "azerty",
  first_name: "Chuck",
  last_name: "Norris",
  is_dwarf: false,
  age: 51,
)

User.create!(
  email: "baboulinet@gmail.com",
  password: "azerty",
  first_name: "Vin",
  last_name: "Diesel",
  is_dwarf: false,
  age: 39,
)

skills = %w(Lap\ dancer Stuntman Canonman Flying\ Midget Midget\ Tossing)

skills.each do |skill|
  Skill.create!(skill: skill)
end
