# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Like.destroy_all # belongs to Yips and Users
Chirp.destroy_all # belongs to Users
User.destroy_all # can exist on its own

# Users
paloma = User.create!(
  username: "awesome_person", 
  email: "awesome_person@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "JavaScript"
)

valerie = User.create!(
  username: "valerous", 
  email: "valerous@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "Ruby"
)

daniel = User.create!(
  username: "dan_the_man", 
  email: "dan_the_man@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "Ruby"
)

megan = User.create!(
  username: "the_wizard", 
  email: "the_wizard@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "CSS"
)

cathy = User.create!(
  username: "catz", 
  email: "catz@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "Ruby"
)

raz = User.create!(
  username: "squirelly", 
  email: "squirelly@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "JavaScript"
)

david = User.create!(
  username: "david_rocks", 
  email: "david_rocks@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "Ruby"
)

justin = User.create!(
  username: "justin_gets_buckets", 
  email: "justin_gets_buckets@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "JavaScript"
)

brad = User.create!(
  username: "beep_boop", 
  email: "beep_boop@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "C++"
)

greta = User.create!(
  username: "adventursaurus", 
  email: "adventursaurus@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "JavaScript"
)

big_company = User.create!(
  username: "instructors_rock", 
  email: "instructors_rock@email.com", 
  password: "starwars",
  age: 30, 
  political_affiliation: "Instructors"
)

alvin = User.create!(
  username: "alvin_aka_mr_structy", 
  email: "alvin@email.com", 
  password: "starwars",
  age: 150, 
  political_affiliation: "JavaScript"
)

alisher = User.create!(
  username: "alisher_p_is_cool", 
  email: "alisher@email.com", 
  password: "starwars",
  age: 1, 
  political_affiliation: "C++"
)

alan = User.create!(
  username: "alan_5_ever", 
  email: "alanr@email.com", 
  password: "starwars",
  age: 2, 
  political_affiliation: "Ruby"
)

davidz = User.create!(
  username: "zheng_zheng", 
  email: "davidz@email.com", 
  password: "starwars",
  age: 3, 
  political_affiliation: "JavaScript"
)

davida = User.create!(
  username: "all_david_all", 
  email: "david_all@email.com", 
  password: "starwars",
  age: 4, 
  political_affiliation: "JavaScript"
)

duncan = User.create!(
  username: "duncs", 
  email: "duncannnnl@email.com", 
  password: "starwars",
  age: 5, 
  political_affiliation: "JavaScript"
)

ericb = User.create!(
  username: "eric_b_yay", 
  email: "eric_b_yayay@email.com", 
  password: "starwars",
  age: 6, 
  political_affiliation: "Ruby"
)

evan = User.create!(
  username: "evan_of_house_frommer", 
  email: "house_frommerl@email.com", 
  password: "starwars",
  age: 7, 
  political_affiliation: "JavaScript"
)

gabe = User.create!(
  username: "gabe_of_gabes", 
  email: "gabe@email.com", 
  password: "starwars",
  age: 8, 
  political_affiliation: "JavaScript"
)

karen = User.create!(
  username: "karen_care", 
  email: "karennn@email.com", 
  password: "starwars",
  age: 9, 
  political_affiliation: "Ruby"
)

kevin = User.create!(
  username: "kev_kev", 
  email: "kevster@email.com", 
  password: "starwars",
  age: 10, 
  political_affiliation: "Ruby"
)

leo = User.create!(
  username: "leo_lion", 
  email: "leo@email.com", 
  password: "starwars",
  age: 11, 
  political_affiliation: "JavaScript"
)

lin = User.create!(
  username: "lin_the_great", 
  email: "great_lin@email.com", 
  password: "starwars",
  age: 12, 
  political_affiliation: "JavaScript"
)

madeleine = User.create!(
  username: "madeleinee", 
  email: "madeleine@email.com", 
  password: "starwars",
  age: 13, 
  political_affiliation: "Ruby"
)

mikec = User.create!(
  username: "mike_chen_is_dope", 
  email: "mike_chen@email.com", 
  password: "starwars",
  age: 14, 
  political_affiliation: "JavaScript"
)

mikeh = User.create!(
  username: "hollander", 
  email: "mike_holl@email.com", 
  password: "starwars",
  age: 15, 
  political_affiliation: "JavaScript"
)

michael = User.create!(
  username: "r_michael_r", 
  email: "michael@email.com", 
  password: "starwars",
  age: 16, 
  political_affiliation: "JavaScript"
)

nikhil = User.create!(
  username: "nikhil_is_awesome", 
  email: "nikhil_is_awesome@email.com", 
  password: "starwars",
  age: 17, 
  political_affiliation: "Ruby"
)

tom = User.create!(
  username: "tom_most_of_all", 
  email: "tommy@email.com", 
  password: "starwars",
  age: 18, 
  political_affiliation: "JavaScript"
)

vera = User.create!(
  username: "hella_vera", 
  email: "vera@email.com", 
  password: "starwars",
  age: 19, 
  political_affiliation: "Ruby"
)

vivian = User.create!(
  username: "call_me_viv", 
  email: "viv@email.com", 
  password: "starwars",
  age: 20, 
  political_affiliation: "JavaScript"
)

vic = User.create!(
  username: "vic_the_man", 
  email: "vic@email.com", 
  password: "starwars",
  age: 120, 
  political_affiliation: "JavaScript"
)

ayce = User.create!(
  username: "ayce_in_space", 
  email: "spayce@email.com", 
  password: "starwars",
  age: 99, 
  political_affiliation: "Ruby"
)

spencer = User.create!(
  username: "guitar_spencer", 
  email: "strings@email.com", 
  password: "starwars",
  age: 95, 
  political_affiliation: "Ruby"
)

kin = User.create!(
  username: "kin_ka_the_dopest", 
  email: "dope@email.com", 
  password: "starwars",
  age: 200, 
  political_affiliation: "JavaScript"
)

# chirps
chirp1 = Chirp.create!(author_id: david.id, body: "Please use my messaging app, it's way better than Twitter.")
chirp2 = Chirp.create!(author_id: big_company.id, body: "Hello fellow instructors.")
chirp3 = Chirp.create!(author_id: big_company.id, body: "Have you seen this sweet instructor merch?")
chirp4 = Chirp.create!(author_id: justin.id, body: "Sweeeeeet.")
chirp5 = Chirp.create!(author_id: cathy.id, body: "Kahoots are an opportunity to mess with students.")

chirp6 = Chirp.create!(author_id: valerie.id, body: "Raaaaaiiiils.")
chirp7 = Chirp.create!(author_id: cathy.id, body: "This is a random quote I found online. -Some person, 2020.")
chirp8 = Chirp.create!(author_id: justin.id, body: "JavaScript is the best coding language.")

chirp9 = Chirp.create!(author_id: david.id, body: "Programmer: A machine that turns coffee into code.")
chirp10 = Chirp.create!(author_id: big_company.id, body: "You're a wizard, instructor.")


# Likes

# cathy
Like.create!(liker_id: cathy.id, chirp_id: chirp1.id)
Like.create!(liker_id: cathy.id, chirp_id: chirp4.id)
Like.create!(liker_id: cathy.id, chirp_id: chirp6.id)
Like.create!(liker_id: cathy.id, chirp_id: chirp8.id)
Like.create!(liker_id: cathy.id, chirp_id: chirp9.id)

# David
Like.create!(liker_id: david.id, chirp_id: chirp6.id)
Like.create!(liker_id: david.id, chirp_id: chirp7.id)
Like.create!(liker_id: david.id, chirp_id: chirp8.id)
Like.create!(liker_id: david.id, chirp_id: chirp4.id)

# raz
Like.create!(liker_id: raz.id, chirp_id: chirp4.id)
Like.create!(liker_id: raz.id, chirp_id: chirp5.id)
Like.create!(liker_id: raz.id, chirp_id: chirp8.id)

# justin
Like.create!(liker_id: justin.id, chirp_id: chirp5.id)
Like.create!(liker_id: justin.id, chirp_id: chirp6.id)

# Big Company
Like.create!(liker_id: big_company.id, chirp_id: chirp1.id)
Like.create!(liker_id: big_company.id, chirp_id: chirp4.id)
Like.create!(liker_id: big_company.id, chirp_id: chirp5.id)
Like.create!(liker_id: big_company.id, chirp_id: chirp6.id)
Like.create!(liker_id: big_company.id, chirp_id: chirp7.id)
Like.create!(liker_id: big_company.id, chirp_id: chirp8.id)
Like.create!(liker_id: big_company.id, chirp_id: chirp9.id)