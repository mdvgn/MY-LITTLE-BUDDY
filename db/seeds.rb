User.destroy_all
Skill.destroy_all
Dwarf.destroy_all

skills = %w(Lap\ dance Cascadeur Petit\ Projectile Lancé\ de\ nain Mobilier Esnabot Bowling Combat\ de\ nain Nain\ aquatique Catcheur Porte\ gobelet Mètre\ étalon Porte-clés)

skills.each do |skill|
  Skill.create!(skill: skill)
end

pass = Dwarf.create!(
  nickname: "Pass2Par",
  size: 130,
  gender: "male",
  description: "Je passe ou vous voulez, quand vous-voulez, nain'porte ou",
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
  nickname: "Mimilf Mathy",
  size: 80,
  gender: "female",
  description: "La naine gardienne",
  price_per_hour: 20,
  location: " 4 boulevard Carabacel, Nice",
  # skills: Skill.create!(
  #   skills: "Lap dance"),
  user: User.create!(
    email: "mimimaty@gmail.com",
    password: "azerty",
    first_name: "Mimi",
    last_name: "Maty",
    is_dwarf: true,
    age: 54),
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


frodon = Dwarf.create!(
  nickname: "Frodon",
  size: 134,
  gender: "male",
  description: "J'ai un petit anneau",
  price_per_hour: 420,
  location: " 4 rue des Fabriques d'en Nabot, 66000 Perpignan",
  user: User.create!(
    email: "frodon@gmail.com",
    password: "azerty",
    first_name: "frodon",
    last_name: "sacacquettes",
    is_dwarf: true,
    age: 34)
)
frodon.photos.attach(io: File.open('app/assets/images/seeds/frodon.jpg'), filename: 'frodon.jpg', content_type:'image/jpg')

dejardin = Dwarf.create!(
  nickname: "Dejardin",
  size: 134,
  gender: "male",
  description: "J'aime être nu, m'enduire de vaseline, et me rouler par terre en prétendant que je suis une limace",
  price_per_hour: 40,
  location: " 12 avenue Thiers, Nice",
  user: User.create!(
    email: "naindejardin@gmail.com",
    password: "azerty",
    first_name: "Jean",
    last_name: "Dejardin",
    is_dwarf: true,
    age: 44)
)
dejardin.photos.attach(io: File.open('app/assets/images/seeds/dejardin.jpg'), filename: 'dejardin.jpg', content_type:'image/jpg')

yoda = Dwarf.create!(
  nickname: "Yoda",
  size: 124,
  gender: "male",
  description: "Me louer, tu peux",
  price_per_hour: 40,
  location: " 15 avenue Jean Medecin, Nice",
  user: User.create!(
    email: "yoda@gmail.com",
    password: "azerty",
    first_name: "Maitre",
    last_name: "Yoda",
    is_dwarf: true,
    age: 74)
)
yoda.photos.attach(io: File.open('app/assets/images/seeds/yoda1.jpg'), filename: 'yoda1.jpg', content_type:'image/jpg')

bowling = Dwarf.create!(
  nickname: "Boule",
  size: 124,
  gender: "shemale",
  description: "Une piste, des quilles, trois doigts et je suis à toi",
  price_per_hour: 40,
  location: " 3 rue montparnasse, paris",
  user: User.create!(
    email: "boule@gmail.com",
    password: "azerty",
    first_name: "Boule",
    last_name: "Aquilles",
    is_dwarf: true,
    age: 34)
)
bowling.photos.attach(io: File.open('app/assets/images/seeds/boule.jpg'), filename: 'boule.jpg', content_type:'image/jpg')


dildo = Dwarf.create!(
  nickname: "Dildo",
  size: 134,
  gender: "male",
  description: "Devine ce que je cache dans ma poche",
  price_per_hour: 666,
  location: " 10 Rue de la Republique, Lyon",
  user: User.create!(
    email: "dildolehobbit@gmail.com",
    password: "azerty",
    first_name: "Dildo",
    last_name: "Le Hobbit",
    is_dwarf: true,
    age: 34)
)
dildo.photos.attach(io: File.open('app/assets/images/seeds/bilbo1.jpg'), filename: 'bilbo1.jpg', content_type:'image/jpg')

nainesteaseuse = Dwarf.create!(
  nickname: "Pamela",
  size: 134,
  gender: "female",
  description: "Un nain vaut mieux que deux tu l'auras.",
  price_per_hour: 49,
  location: " 6 rue de russie, Nice",
  user: User.create!(
    email: "pamela@gmail.com",
    password: "azerty",
    first_name: "Pamela",
    last_name: "Nainesteaseuse",
    is_dwarf: true,
    age: 34)
)
nainesteaseuse.photos.attach(io: File.open('app/assets/images/seeds/nainesteaseuse.jpg'), filename: 'nainesteaseuse.jpg', content_type:'image/jpg')

naingeur = Dwarf.create!(
  nickname: "Naingeur",
  size: 100,
  gender: "male",
  description: "Je fais 1 mètre de haut et j'aime nager, je suis un Maître Naingeur.",
  price_per_hour: 49,
  location: " 2 rue pertinax, Nice",
  user: User.create!(
    email: "naingeur@gmail.com",
    password: "azerty",
    first_name: "Nemo",
    last_name: "Le nainquatique",
    is_dwarf: true,
    age: 34)
)
naingeur.photos.attach(io: File.open('app/assets/images/seeds/nainquatique1.jpg'), filename: 'nainquatique1.jpg', content_type:'image/jpg')


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

DwarfSkill.create!(
    dwarf_id: 1,
    skill_id: 4,
)

DwarfSkill.create!(
    dwarf_id: 1,
    skill_id: 6,
)

DwarfSkill.create!(
    dwarf_id: 1,
    skill_id: 13,
)

DwarfSkill.create!(
    dwarf_id: 2,
    skill_id: 1,
)

DwarfSkill.create!(
    dwarf_id: 2,
    skill_id: 11,
)

DwarfSkill.create!(
    dwarf_id: 2,
    skill_id: 5,
)

DwarfSkill.create!(
    dwarf_id: 3,
    skill_id: 10,
)

DwarfSkill.create!(
    dwarf_id: 3,
    skill_id: 12,
)

DwarfSkill.create!(
    dwarf_id: 4,
    skill_id: 10,
)

DwarfSkill.create!(
    dwarf_id: 4,
    skill_id: 3,
)

DwarfSkill.create!(
    dwarf_id: 4,
    skill_id: 2,
)

DwarfSkill.create!(
    dwarf_id: 5,
    skill_id: 6,
)

DwarfSkill.create!(
    dwarf_id: 5,
    skill_id: 11,
)

DwarfSkill.create!(
    dwarf_id: 6,
    skill_id: 12,
)

DwarfSkill.create!(
    dwarf_id: 6,
    skill_id: 1,
)

DwarfSkill.create!(
    dwarf_id: 7,
    skill_id: 2,
)

DwarfSkill.create!(
    dwarf_id: 7,
    skill_id: 6,
)

DwarfSkill.create!(
    dwarf_id: 7,
    skill_id: 8,
)

DwarfSkill.create!(
    dwarf_id: 8,
    skill_id: 7,
)

DwarfSkill.create!(
    dwarf_id: 8,
    skill_id: 2,
)

DwarfSkill.create!(
    dwarf_id: 8,
    skill_id: 3,
)

DwarfSkill.create!(
    dwarf_id: 9,
    skill_id: 5,
)

DwarfSkill.create!(
    dwarf_id: 9,
    skill_id: 11,
)

DwarfSkill.create!(
    dwarf_id: 9,
    skill_id: 13,
)

DwarfSkill.create!(
    dwarf_id: 10,
    skill_id: 1,
)

DwarfSkill.create!(
    dwarf_id: 10,
    skill_id: 6,
)

DwarfSkill.create!(
    dwarf_id: 10,
    skill_id: 9,
)

DwarfSkill.create!(
    dwarf_id: 11,
    skill_id: 9,
)

DwarfSkill.create!(
    dwarf_id: 11,
    skill_id: 12,
)

Rent.create(
  dwarf_id: 1,
  user_id: 2,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "A retrouvé mes clés sous le placard, génial!",
  rating: 4,
)

Rent.create(
  dwarf_id: 1,
  user_id: 3,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Un moment naincroyable.",
  rating: 5,
)

Rent.create!(
  dwarf_id: 2,
  user_id: 1,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Mon mini ange a moi.",
  rating: 3,
)

Rent.create!(
  dwarf_id: 2,
  user_id: 1,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
    review: "Oh mimi...",
  rating: 4,
)

Rent.create!(
  dwarf_id: 3,
  user_id: 6,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Il mord, fuyez!",
  rating: 1,
)

Rent.create!(
  dwarf_id: 3,
  user_id: 5,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Tout ce qui est petit est mignon.",
  rating: 4,
)

Rent.create!(
  dwarf_id: 4,
  user_id: 2,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Fait peur aux chiens, utile!",
  rating: 3,
)


Rent.create!(
  dwarf_id: 4,
  user_id: 1,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Protège des midgethanos!",
  rating: 4,
)

Rent.create!(
  dwarf_id: 5,
  user_id: 1,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Attention à vos bagues!",
  rating: 1,
)

Rent.create!(
  dwarf_id: 5,
  user_id: 3,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Guide de rando de poche.",
  rating: 4,
)

Rent.create!(
  dwarf_id: 6,
  user_id: 2,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Tout petit frisson garantie.",
  rating: 5,
)

Rent.create!(
  dwarf_id: 6,
  user_id: 5,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Un petit moment de plaisir",
  rating: 4,
)

Rent.create!(
  dwarf_id: 7,
  user_id: 1,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Pas ouf",
  rating: 1,
)

Rent.create!(
  dwarf_id: 8,
  user_id: 4,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Bon aerodynamisme!",
  rating: 5,
)

Rent.create!(
  dwarf_id: 8,
  user_id: 5,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Bonne prise en main.",
  rating: 4,
)

Rent.create!(
  dwarf_id: 10,
  user_id: 6,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Parfait pour caler une table.",
  rating: 5,
)


Rent.create!(
  dwarf_id: 9,
  user_id: 4,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Porte bien son nom",
  rating: 5,
)

Rent.create!(
  dwarf_id: 10,
  user_id: 6,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Idéal pour un enterrement",
  rating: 4,
)

Rent.create!(
  dwarf_id: 10,
  user_id: 3,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Naincomparable",
  rating: 5,
)

Rent.create!(
  dwarf_id: 11,
  user_id: 8,
  start_date: "2021-08-19T23:32",
  end_date: "2021-08-20T23:32",
  review: "Rentre dans une valise, idéal pour les voyages",
  rating: 4,
)

puts "#{Dwarf.count} midgets created"
