# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




contact = Contact.create({ name: "Pamela Mathias",
                           cpf: "14532045766",
                           email: "pamela.ferreira@test.com",
                           birth_date: Time.zone.now.to_date
                         })

contact.addresses.create({street: "Av Atlantida",
                           number: "177",
                           district: "San Francisco",
                           city: "Florida",
                           state: "California"
                           })















