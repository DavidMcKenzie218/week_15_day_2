Hero.delete_all()
Film.delete_all()
Armoury.delete_all()
Weapon.delete_all()

arnie = Hero.create({name: "Arnold Schwarzenegger"})
norris = Hero.create({name: "Chuck Norris"})

Film.create({name: "Terminator 2", hero: arnie})
Film.create({name: "The Way of the Dragon", hero: norris})

machine = Weapon.create(name: "M16A4")
fists = Weapon.create(name: "Chuck Norris's Bare Fists of Absolute Destruction")

Armoury.create(name: "The Terminators Secret Stash", weapon: machine, hero: arnie)
Armoury.create(name: "Norris's Beard", weapon: fists, hero: norris)