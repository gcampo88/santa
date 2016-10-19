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
katie = Individual.create(family_id: campos.id, name: "Katie Campo")
warren = Individual.create(family_id: campos.id, name: "Warren Ryan")
gigi = Individual.create(family_id: campos.id, name: "Gigi Campo")
max = Individual.create(family_id: campos.id, name: "Max Blum")
will = Individual.create(family_id: campos.id, name: "Will Campo")

# Previous Matches
