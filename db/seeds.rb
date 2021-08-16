require 'faker'

User.create!(
  email: "pass-partout@gmail.com",
  password: "azerty",
  first_name: "Passe",
  last_name: "Partout",
  dwarf: true,
  age: 54,
  photo: "https://photos.lci.fr/images/1024/576/andrebd-35f7da-0@1x.png",
)

User.create!(
  email: "mimimaty@gmail.com",
  password: "azerty",
  first_name: "Mimi",
  last_name: "Maty",
  dwarf: true,
  age: 54,
  photo: "https://www.francetvinfo.fr/pictures/a858B209DahBSlXaWsSfHL2WfpI/0x192:4368x2646/944x531/filters:format(webp)/2013/10/03/sipa_tf135103727_000001_1.jpg",
)

User.create!(
  email: "chuck@gmail.com",
  password: "azerty",
  first_name: "Chuck",
  last_name: "Norris",
  dwarf: false,
  age: 51,
  photo: "https://blog.planete-nextgen.com/wp-content/uploads/2015/02/chuck-norris-mulet.jpg",
)

User.create!(
  email: "baboulinet@gmail.com",
  password: "azerty",
  first_name: "Vin",
  last_name: "Diesel",
  dwarf: false,
  age: 39,
  photo: "http://3.bp.blogspot.com/-V2M5HO8FQXo/UC0rK4ZQ4dI/AAAAAAAAD8g/-ErWReK1FiI/s1600/Vin+Diesel+%283%29.jpg",
)
