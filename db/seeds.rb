# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([{user_name: "rumo", password: "password123", first_name: "Rumo", last_name: "Dog"},
                     {user_name: "noah", password: "password123", first_name: "Noah", last_name: "Wiener"}
                  ])




workshops = Workshop.create([{host_id: 2,
                                title: "Coding Workshop",
                                details: "Learn RoR in 25 minutes!",
                                date: Date.new(2015,10,20),
                                start_time: Time.new(2015, 10, 20, 2, 0, 0),
                                current_attendees: 2,
                                max_attendees: 10,
                                lat: 37.781220,
                                lng: -122.411342,
                                location: "App Academy, SF",
                                price: "One million dollars"
                              },
                              {host_id: 1,
                                title: "Barking Lessons",
                                details: "Professional Advice from my dog",
                                date: Date.new(2015,10,22),
                                start_time: Time.new(2015, 10, 22, 4, 0, 0),
                                current_attendees: 50,
                                max_attendees: 1000,
                                lat: 37.873549,
                                lng: -122.274688,
                                location: "Ohlone Dog Park, Berkeley",
                                price: "$20"
                              }
                              ])
