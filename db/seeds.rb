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
                                price: "One million dollars",
                                body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n

Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet.\n

Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices.\n

Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi lacinia molestie dui. Praesent blandit dolor. Sed non quam. In vel mi sit amet augue congue elementum. Morbi in ipsum sit amet pede facilisis laoreet. Donec lacus nunc, viverra nec, blandit vel, egestas et, augue. Vestibulum tincidunt malesuada tellus. Ut ultrices ultrices enim. Curabitur sit amet mauris. Morbi in dui quis est pulvinar ullamcorper.
"
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
                                body: "Woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof\n
                                woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof\n
                                woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof\n
                                woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof",
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
                                body: "Ever feel intimidated by a wine list at a restaurant? Want a behind-the-scenes view into the world of California wines? Join other wine enthusiasts for a private tasting experience after hours in the heart of Oakland’s Jack London Square, and be able to impress your friends by using the word terroir correctly in a sentence.\n

You’ll join Limor, Experiencely’s most highly rated host, for a private tasting at the Bay Area’s hottest urban winery. Limor will take your palette on a journey from rocky zinfandel vineyards in Sonoma to the volcanic foothills of the Sierras. Guests will discover the subtleties of all 15 varietals served at Dashe Cellars.\n

Limor developed her love of wine while living in the heart of Malbec country on the slopes of the Argentinian Andes, and has experience working in Sonoma before moving into the world of urban wineries here in the Bay Area.  She will be your guide as you learn to distinguish a Sauvignon Blanc from a Chardonnay and how to pair the right wine with your favorite meal.",
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
                                body: "From the workshop host, Ethan Prantera: \n I started my journey with Natural Building five years ago, after seeing a short documentary advocating the use of natural materials. Shortly after, I sought every opportunity available to learn skills by obtaining apprenticeships with top-class natural builders across the world.\n

Time and again in these workshops, with the guidance of brilliant mentors, I saw empowerment happen. I witnessed people of widely diverse backgrounds, from the struggling single mother to the estranged radical environmentalist, learn from the group process and from sharing life experience together. I was constantly inspired to orchestrate such events and to perpetuate these experiences, a camaraderie formed in mud.\n

Being a fervent believer in community and sustainable lifestyles, my dream is to make Natural Building technologies more accessible and well known.\n

Ready to plant roots into a community, I settled in Berkeley, California after finishing an internship in Natural Building and orchard care in Yolo County. Choosing the hub of urban art and progressive innovations was a clear easy choice. I landed at Green Faerie Farm, helping to manage animals onsite, and began a contracting/carpentry apprenticeship to further expand hands-on building experience. Being in the Bay Area fosters my connection to the building community and has helped shape my experiences into a career.\n

Although the core of my experience lies in Natural Building and Carpentry, my goal is to integrate all systems of self-reliance and sufficiency to create human ecosystems to heal the planet. This is the type of community I wish to contribute to. ",
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
                                body: "By your host, Marley BenShalom, director of the Mindful Garden Collective at Laney College in Oakland:

                                The Mindful Garden Collective is a social innovation project lead by students that empowers other students to create their own adventure through the revitalization and expansion of an urban space. We are committed to the wellness of our locality by providing organic food to those in need and by hosting a space for community gatherings. We believe in serving the community as a part of a larger effort to consciously influence the evolution of the planet in the name of synergy, compassion, and love.\n

The Laney edible garden is located in Oakland, CA in the Peralta district next to Lake Merritt. It was first started six years ago by a man who has been supporting agricultural growth and restoration throughout the Eastbay his entire life. Kenneth Kolevzon aka Grey is a key activist, teacher, and friend who supports some of the most influential projects throughout the bay. He started the Laney garden just so he would have an outdoors space to teach his High School class about the land. He continued to restore the land and expand the garden until it was big enough to feed hundreds.\n

We are an inner city community college serving a diverse population and our vision is to bring every one together by co-creating an outdoors inclusive wellness center. Our goals are to connect students to their food source, encourage emotional growth, community support, and restorative justice. We are currently awaiting approval to expand our space and build a food forest across the Lake Merritt canal. We host nonprofits, k-12, and are working towards becoming restitution. The garden is a place for the community to learn and grow together while supporting students to broaden their understanding of the world and realize the infinite possibilities that are available to them.\n

'When you are inspired by some great purpose, some extraordinary project, all your thoughts break their bonds: Your mind transcends limitations, your consciousness expands in every direction, and you find yourself in a new, great and wonderful world. Dormant forces, faculties and talents become alive, and you discover yourself to be a greater person by far than you ever dreamed yourself to be.' ",
                                price: "$5"
                              }
                              ])


                              #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

photos = Photo.create([{name: 'Noah', imageable_type: "User", imageable_id: 2, url: "noah_profile.jpg"},
                      {name: 'EthanOven', imageable_type: "Workshop", imageable_id: 4, url: "ethan_oven.jpeg"},
                      {name: 'Ethan team on roof', imageable_type: "Workshop", imageable_id: 4, url: "ethan_team_project.jpeg"},
                      {name: 'Nubian2', imageable_type: "Workshop", imageable_id: 4, url: "nubian2.jpg"},
                      {name: 'Nubian', imageable_type: "Workshop", imageable_id: 4, url: "nubian_vault.jpg"},
                      {name: 'Team', imageable_type: "Workshop", imageable_id: 4, url: "ethan_team.jpeg"},
                      {name: 'Ethan', imageable_type: "User", imageable_id: 4, url: "ethan_profile.jpeg"},
                        ])
