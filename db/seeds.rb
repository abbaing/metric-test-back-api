# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

metric1 = Metric.create(name: "Metric 1", value: 150.0, time: DateTime.strptime("12/09/2021 15:00", "%m/%d/%Y %H:%M"))
metric1 = Metric.create(name: "Metric 2", value: 45.5, time: DateTime.strptime("12/09/2021 18:00", "%m/%d/%Y %H:%M"))
metric1 = Metric.create(name: "Metric 3", value: 17.72, time: DateTime.strptime("12/09/2021 21:00", "%m/%d/%Y %H:%M"))