# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
nytomia = Connection.create(location_1: "New York", location_2: "Miami")
nytosf = Connection.create(location_1: "New York", location_2: "San Francisco")

nytola = Connection.create(location_1: "New York", location_2: "Los Angeles")
nytoden = Connection.create(location_1: "New York", location_2: "Denver")

nytotr = Connection.create(location_1: "New York", location_2: "Turkey")
nytoesp = Connection.create(location_1: "New York", location_2: "Spain")

nytomi = Connection.create(location_1: "New York", location_2: "Michigan")
nytoid = Connection.create(location_1: "New York", location_2: "Idaho")

spirit = Airline.create(name: "Spirit Airlines")
jet_blue = Airline.create(name: "Jet Blue")
delta = Airline.create(name: "Delta")

AirlineConnection.create(connection: nytomia, airline: jet_blue, price: 335.00)
AirlineConnection.create(connection: nytola, airline: jet_blue, price: 245.00)
AirlineConnection.create(connection: nytomi, airline: jet_blue, price: 330.00)

AirlineConnection.create(connection: nytomia, airline: spirit, price: 135.00)
AirlineConnection.create(connection: nytola, airline: spirit, price: 145.00)
AirlineConnection.create(connection: nytomi, airline: spirit, price: 130.00)

AirlineConnection.create(connection: nytomia, airline: delta, price: 315.00)
AirlineConnection.create(connection: nytola, airline: delta, price: 255.00)
AirlineConnection.create(connection: nytomi, airline: delta, price: 280.00)
