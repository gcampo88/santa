# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Families
Family.destroy_all

littlefields = Family.create(last_name: "Littlefield")
alversons = Family.create(last_name: "Alverson")
lex_groves = Family.create(last_name: "Groves-Lexington")
vt_groves = Family.create(last_name: "Groves-Vermont")
campos = Family.create(last_name: "Campo")

# Individuals
Individual.destroy_all
# Littlefields
betsy_p = Individual.create(family_id: littlefields.id, name: "Betsy Pace")
dan = Individual.create(family_id: littlefields.id, name: "Dan Pace")
suzy = Individual.create(family_id: littlefields.id, name: "Suzy Littlefield")
josh = Individual.create(family_id: littlefields.id, name: "Josh Littlefield")
billy = Individual.create(family_id: littlefields.id, name: "Billy Littlefield")

# Alversons
harry_3 = Individual.create(family_id: alversons.id, name: "Harry Alverson III")
katie_a = Individual.create(family_id: alversons.id, name: "Katie Alverson")
harry_4 = Individual.create(family_id: alversons.id, name: "Harry Alverson IV")
louise = Individual.create(family_id: alversons.id, name: "Louise Alverson")
laurenricky = Individual.create(family_id: alversons.id, name: "Lauren Alverson and Ricky Mayfield")
# ricky = Individual.create(family_id: alversons.id, name: "Ricky Mayfield")
lily = Individual.create(family_id: alversons.id, name: "Lily Alverson")

# Lexington Groveses
chris = Individual.create(family_id: lex_groves.id, name: "Chris Groves")
martha = Individual.create(family_id: lex_groves.id, name: "Martha Groves")
sarah = Individual.create(family_id: lex_groves.id, name: "Sarah Groves")
deniz = Individual.create(family_id: lex_groves.id, name: "Deniz Karakoyunlu")
tim = Individual.create(family_id: lex_groves.id, name: "Tim Groves")

# Vermont Groveses
laurie = Individual.create(family_id: vt_groves.id, name: "Laurie Groves")
meg = Individual.create(family_id: vt_groves.id, name: "Meg Groves")
mac = Individual.create(family_id: vt_groves.id, name: "Mac Groves")
gretta = Individual.create(family_id: vt_groves.id, name: "Gretta Groves")
lucy = Individual.create(family_id: vt_groves.id, name: "Lucy Groves")

# Campos
jack = Individual.create(family_id: campos.id, name: "Jack Campo")
betsy_c = Individual.create(family_id: campos.id, name: "Betsy Campo")
katie_c = Individual.create(family_id: campos.id, name: "Katie Campo")
warren = Individual.create(family_id: campos.id, name: "Warren Ryan")
gigi = Individual.create(family_id: campos.id, name: "Gigi Campo")
max = Individual.create(family_id: campos.id, name: "Max Blum")
will = Individual.create(family_id: campos.id, name: "Will Campo")

# Previous Matches

PreviousPair.destroy_all
# 2015:
# campos
PreviousPair.create!(giver: betsy_c, recipient: billy, year: 2015)
PreviousPair.create!(giver: jack, recipient: mac, year: 2015)
PreviousPair.create!(giver: katie_c, recipient: suzy, year: 2015)
PreviousPair.create!(giver: warren, recipient: sarah, year: 2015)
PreviousPair.create!(giver: gigi, recipient: meg, year: 2015)
PreviousPair.create!(giver: will, recipient: chris, year: 2015)

# alvies
PreviousPair.create!(giver: harry_3, recipient: laurie, year: 2015)
PreviousPair.create!(giver: katie_a, recipient: katie_c, year: 2015)
PreviousPair.create!(giver: harry_4, recipient: dan, year: 2015)
PreviousPair.create!(giver: louise, recipient: martha, year: 2015)
PreviousPair.create!(giver: laurenricky, recipient: will, year: 2015)
PreviousPair.create!(giver: lily, recipient: gigi, year: 2015)

# littlefields
PreviousPair.create!(giver: suzy, recipient: lily, year: 2015)
PreviousPair.create!(giver: josh, recipient: jack, year: 2015)
PreviousPair.create!(giver: betsy_p, recipient: warren, year: 2015)
PreviousPair.create!(giver: dan, recipient: gretta, year: 2015)
PreviousPair.create!(giver: billy, recipient: betsy_c, year: 2015)

# lex groveses
PreviousPair.create!(giver: martha, recipient: harry_3, year: 2015)
PreviousPair.create!(giver: chris, recipient: lucy, year: 2015)
PreviousPair.create!(giver: sarah, recipient: josh, year: 2015)
PreviousPair.create!(giver: tim, recipient: laurenricky, year: 2015)


# Vermont Groveses
PreviousPair.create!(giver: laurie, recipient: louise, year: 2015)
PreviousPair.create!(giver: meg, recipient: betsy_p, year: 2015)
PreviousPair.create!(giver: mac, recipient: harry_4, year: 2015)
PreviousPair.create!(giver: gretta, recipient: katie_a, year: 2015)
PreviousPair.create!(giver: lucy, recipient: tim, year: 2015)

# 2016:
# campos
PreviousPair.create!(giver: betsy_c, recipient: chris, year: 2016)
PreviousPair.create!(giver: jack, recipient: laurenricky, year: 2016)
PreviousPair.create!(giver: katie_c, recipient: mac, year: 2016)
PreviousPair.create!(giver: warren, recipient: laurie, year: 2016)
PreviousPair.create!(giver: gigi, recipient: suzy, year: 2016)
PreviousPair.create!(giver: max, recipient: billy, year: 2016)
PreviousPair.create!(giver: will, recipient: louise, year: 2016)

# alvies
PreviousPair.create!(giver: harry_3, recipient: martha, year: 2016)
PreviousPair.create!(giver: katie_a, recipient: will, year: 2016)
PreviousPair.create!(giver: harry_4, recipient: max, year: 2016)
PreviousPair.create!(giver: louise, recipient: sarah, year: 2016)
PreviousPair.create!(giver: laurenricky, recipient: gretta, year: 2016)
PreviousPair.create!(giver: lily, recipient: betsy_p, year: 2016)

# littlefields
PreviousPair.create!(giver: suzy, recipient: harry_4, year: 2016)
PreviousPair.create!(giver: josh, recipient: tim, year: 2016)
PreviousPair.create!(giver: betsy_p, recipient: deniz, year: 2016)
PreviousPair.create!(giver: dan, recipient: warren, year: 2016)
PreviousPair.create!(giver: billy, recipient: katie_c, year: 2016)

# lex groveses
PreviousPair.create!(giver: martha, recipient: meg, year: 2016)
PreviousPair.create!(giver: chris, recipient: jack, year: 2016)
PreviousPair.create!(giver: sarah, recipient: lucy, year: 2016)
PreviousPair.create!(giver: tim, recipient: josh, year: 2016)
PreviousPair.create!(giver: deniz, recipient: katie_a, year: 2016)


# Vermont Groveses
PreviousPair.create!(giver: laurie, recipient: gigi, year: 2016)
PreviousPair.create!(giver: meg, recipient: harry_3, year: 2016)
PreviousPair.create!(giver: mac, recipient: lily, year: 2016)
PreviousPair.create!(giver: gretta, recipient: dan, year: 2016)
PreviousPair.create!(giver: lucy, recipient: betsy_c, year: 2016)
