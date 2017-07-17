# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times { |i| User.create(first_name:         "test#{i}",
                          last_name:          "test#{i}",
                          email:              "test#{i}@test.fr",
                          password:           "teeest#{i}") }

5.times { |i| Weapon.create(title:            "test#{i}",
                            description:      "test#{i}",
                            category:         "knives",
                            price:            42,
                            owner_id:         i+1) }

5.times { |i| Booking.create(start_date:      Date.new,
                             end_date:        Date.new,
                             status:          "pending",
                             hirer_id:        i+1,
                             weapon:          Weapon.find(i+1)) }

5.times { |i| Booking.create(start_date:      Date.new,
                             end_date:        Date.new,
                             status:          "pending",
                             hirer_id:        i+1,
                             weapon_id:       i+1) }
