# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Machine.create(name: "Ultimaker Original")
Machine.create(name: "Ultimaker Original Plus")
Machine.create(name: "Ultimaker Two")
Machine.create(name: "Ultimaker Two Plus")
Machine.create(name: "Lasersnijder")
Machine.create(name: "Vinylsnijder")
Machine.create(name: "3D Scanner")

Program.create(name: "Adobe Illustrator")
Program.create(name: "Tinkercad")
Program.create(name: "Sketchup")
Program.create(name: "Inkscape")
Program.create(name: "Blender")

Material.create(sort: "Multiplex", thickness: 3)
Material.create(sort: "Multiplex", thickness: 4)
Material.create(sort: "Multiplex", thickness: 6)
Material.create(sort: "Plexiglas", name: "Transparant", thickness: 3)
Material.create(sort: "Plexiglas", name: "Transparant", thickness: 5)
Material.create(sort: "Plexiglas", name: "Transparant", thickness: 10)
Material.create(sort: "Plexiglas", name: "Transparant", thickness: 15)
Material.create(sort: "Plexiglas", name: "Wit", thickness: 3)
Material.create(sort: "Plexiglas", name: "Wit", thickness: 5)
Material.create(sort: "Plexiglas", name: "Blauw", thickness: 3)
Material.create(sort: "Plexiglas", name: "Geel", thickness: 3)
Material.create(sort: "Plexiglas", name: "Transparant Groen", thickness: 3)
Material.create(sort: "Plexiglas", name: "Transparant Rood", thickness: 3)
Material.create(sort: "Karton")
Material.create(sort: "Karton", name: "Golf")
Material.create(sort: "Vinyl")
Material.create(sort: "Folie")
Material.create(sort: "PLA")