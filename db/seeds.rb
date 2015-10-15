# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([{user_name: "rumo", password: "password123", first_name: "Rumo", last_name: "Dog"},
                     {user_name: "noah", password: "password123", first_name: "Noah", last_name: "Wiener"},
                     {user_name: "Limor", password: "password123", first_name: "Limor", last_name: "Finkel"},
                     {user_name: "Ethan", password: "password123", first_name: "Ethan", last_name: "Prantera"},
                     {user_name: "Marley", password: "password123", first_name: "Marley", last_name: "BenShalom"}
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
                              },
                              {host_id: 3,
                                title: "Wine Tasting",
                                details: "Discover California Zinfandels",
                                date: Date.new(2015,11,1),
                                start_time: Time.new(2015, 11, 1, 4, 0, 0),
                                current_attendees: 4,
                                max_attendees: 8,
                                lat: 37.793899,
                                lng: -122.266470,
                                location: "Dashe Cellars, Oakland",
                                price: "$20"
                              },
                              {host_id: 4,
                                title: "Natural Building",
                                details: "Get your hands dirty with adobe brickmaking",
                                date: Date.new(2015,11,5),
                                start_time: Time.new(2015, 11, 5, 4, 0, 0),
                                current_attendees: 0,
                                max_attendees: 80,
                                lat: 37.864702,
                                lng: -122.289131,
                                location: "Green Fairy Farm, Berkeley",
                                price: "$10"
                              },
                              {host_id: 5,
                                title: "Sustainable Systems",
                                details: "Urban Gardens and Community",
                                date: Date.new(2015,10,24),
                                start_time: Time.new(2015, 10, 24, 4, 0, 0),
                                current_attendees: 5,
                                max_attendees: 20,
                                lat: 37.796534,
                                lng: -122.263412,
                                location: "Mindful Garden Collective, Laney College, Oakland",
                                price: "$5"
                              }
                              ])

photos = Photo.create(name: 'Noah', imageable_type: "User", imageable_id: 2, url: "noah_profile.jpg")
