# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([{user_name: "rumo", password: "password123", first_name: "Rumo", last_name: "Dog", about_me: "Woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof
woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof
woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof"},
                     {user_name: "noah", password: "password123", first_name: "Noah", last_name: "Wiener", about_me: "Former archaeologist Noah Wiener is the founder and lead developer here at Experiencely. Noah discovered his passion for web development while working as the web editor for an archaeology magazine. Upon moving to the Bay Area in 2014, Noah took steps to turn that passion into a professional reality, learning programming at the University of California, Berkeley, before being accepted to the highly selective App Academy web development bootcamp in San Francisco.

Scheduled to graduate the course in November 2015, Noah looks forward to employing his full-stack development experience professionally upon graduation. His ever-growing programming skill set includes experience with Ruby, Rails, SQL, ActiveRecord, JavaScript, React.js, Ajax, jQuery, HTML, and CSS, all of which compliment his professional experience with web analytics and marketing software."},
                     {user_name: "Limor", password: "password123", first_name: "Limor", last_name: "Finkel", about_me: "Limor Finkel, of Oakland's Dashe Cellars, is Experiencely’s most highly rated host. She has led tours of wine caves in Sonoma, zinfandel vineyards in the Russian River Valley, and wine tastings right here in the Bay Area.

Limor developed her love of wine while living in the heart of Malbec country on the slopes of the Argentinian Andes, and has experience working in Sonoma before moving into the world of urban wineries here in the Bay Area.  She will be your guide as you learn to distinguish a Sauvignon Blanc from a Chardonnay and how to pair the right wine with your favorite meal." },
                     {user_name: "Ethan", password: "password123", first_name: "Ethan", last_name: "Prantera", about_me: "I started my journey with Natural Building five years ago, after seeing a short documentary advocating the use of natural materials. Shortly after, I sought every opportunity available to learn skills by obtaining apprenticeships with top-class natural builders across the world.

Time and again in these workshops, with the guidance of brilliant mentors, I saw empowerment happen. I witnessed people of widely diverse backgrounds, from the struggling single mother to the estranged radical environmentalist, learn from the group process and from sharing life experience together. I was constantly inspired to orchestrate such events and to perpetuate these experiences, a camaraderie formed in mud.

Being a fervent believer in community and sustainable lifestyles, my dream is to make Natural Building technologies more accessible and well known.

Ready to plant roots into a community, I settled in Berkeley, California after finishing an internship in Natural Building and orchard care in Yolo County. Choosing the hub of urban art and progressive innovations was a clear easy choice. I landed at Green Faerie Farm, helping to manage animals onsite, and began a contracting/carpentry apprenticeship to further expand hands-on building experience. Being in the Bay Area fosters my connection to the building community and has helped shape my experiences into a career.

Although the core of my experience lies in Natural Building and Carpentry, my goal is to integrate all systems of self-reliance and sufficiency to create human ecosystems to heal the planet. This is the type of community I wish to contribute to."},
                     {user_name: "Marley", password: "password123", first_name: "Marley", last_name: "BenShalom", about_me:"Marley Benshalom works with Natural Conservation and Research with an emphasis on Social Sustainability. She is dedicated to a life of service and believes all beings should have access to food, shelter, and love. Marley continuously creates monthly events around health and wellness to empower the community and give back to those in need. When she is not being a community connector, she is on her bike, hiking, practicing yoga, and most importantly spending time with mother earth. She believes the most important part of life is the present moment and sharing authentically with those around you.

Her work with the Laney College Mindful Garden Collective has helped establish a space that empowers students and community members to create their own adventure through the revitalization and expansion of an urban space. As a key player in the development and promotion of the garden, she is committed to the wellness of her locality by providing organic food to those in need and by hosting a space for community gatherings. "},

{user_name: "Aaron", password: "password123", first_name: "Aaron", last_name: "Wiener", about_me:"Aaron is a senior editor at Mother Jones, a leading independent news organization, featuring investigative and breaking news reporting.  While Aaron typically works out of the Washington D.C. branch, he will be hosting workshops at the Mother Jones headquarters here in San Francisco.

Aaron has experience as an editor and reporter for the Washington City Paper, LA Times, Foreign Policy, Slate, The New Republic, and several other presses, and enjoys hosting workshops on journalism and investigative reporting."},

{user_name: "Ben", password: "password123", first_name: "Ben", last_name: "Mossbarger", about_me:"A laser and optical engineer by profession, Ben is a man who enjoys eclectic performance-focused hobbies, ranging from trapeze to fire-dancing to burlesque and clowning. His performances draw fascinated crowds and his art projects at Burning Man have attracted media attention. He enjoys nothing more than sharing his passions and inviting new friends to join in on his creative spirit. "}
                  ])




workshops = Workshop.create([{host_id: 2,
                                title: "React.js Crash Course",
                                details: "From the Virtual DOM to Flux Architecture",
                                date: Date.new(2015,10,20),
                                start_time: Time.new(2015, 10, 20, 2, 0, 0),
                                current_attendees: 2,
                                max_attendees: 10,
                                lat: 37.781220,
                                lng: -122.411342,
                                location: "App Academy, SF",
                                price: "Free",
                                body: "More and more developers are switching over to Facebook’s new front-end JavaScript library for creating UI components. React has many selling points: a lighting-quick Virtual DOM, modular components, JSX syntax, Flux’s unidirectional flow data, and much more.

One of the best things about React and Flux are their simplicity: JSX resembles HTML/XML, React has no models, no collections, no controllers, no templates, and no routers, and Flux is more of a pattern then a framework, so it can be implemented without having to learn much new code.

Your host for this workshop is Experiencely’s founder, Noah Wiener, who designed the Experiencely website using React and Flux architecture.  Noah is a soon-to-be graduate of San Francisco’s prestigious App Academy, a web development bootcamp focusing on Rails and React development.


This workshop will be held in the heart of San Francisco’s tech scene at the App Academy offices. The workshop will go back-and-forth between demo and lecture, as Noah introduces guests to React components, the React router, and Flux’s unidirectional data model. At the end of the lecture, guests will each sit down at a computer and work through Experiencely’s source code to see React in action!"
                              },
                              {host_id: 1,
                                title: "Barking Lessons",
                                details: "Professional Advice from My Dog",
                                date: Date.new(2015,12,22),
                                start_time: Time.new(2015, 12, 22, 4, 0, 0),
                                current_attendees: 50,
                                max_attendees: 1000,
                                lat: 37.873549,
                                lng: -122.274688,
                                location: "Ohlone Dog Park, Berkeley",
                                body: "Woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof
woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof
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
                                body: "Ever feel intimidated by a wine list at a restaurant? Want a behind-the-scenes view into the world of California wines? Join other wine enthusiasts for a private tasting experience after hours in the heart of Oakland’s Jack London Square, and be able to impress your friends by using the word terroir correctly in a sentence.

You’ll join Limor, Experiencely’s most highly rated host, for a private tasting at the Bay Area’s hottest urban winery. Limor will take your palette on a journey from rocky zinfandel vineyards in Sonoma to the volcanic foothills of the Sierras. Guests will discover the subtleties of all 15 varietals served at Dashe Cellars.

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
                                location: "Green Fairie Farm, Berkeley",
                                body: "Our team will get together to finish building a Nubian Vault at Berkeley’s Green Fairie Farm. Guests will learn new natural building techniques in a farm setting nestled in bustling West Berkeley. You’ll join host Ethan Prantera, a veteran natural builder and a born teacher, to build a hybrid cob/adobe multi-purpose structure to house interns, process food, and store associated tools. 

The building features a Nubian Vault style masonry roof and features organic lines created with earthen materials as well as with innovative bamboo tensile reinforcement. With the exception of the framing for doors and windows, this building is made without wood. The shaded roof structure is a classic post-and-beam design with shaped bracing to aesthetically mimic the shape of the building.

In this fun, team-building workshop, Ethan will guide guests through the processes used in vault construction, and you’ll go home with the skills needed to get your natural building project started!  Visitors will have the chance to become part of the Bay Area’s natural building community, assisting each other on sustainable and natural construction projects.",
                                price: "$10"
                              },
                              {host_id: 5,
                                title: "Urban Gardening",
                                details: "Planting and Sustainability",
                                date: Date.new(2015,12,24),
                                start_time: Time.new(2015, 12, 24, 4, 0, 0),
                                current_attendees: 5,
                                max_attendees: 20,
                                lat: 37.796534,
                                lng: -122.263412,
                                location: "Mindful Garden Collective, Laney College, Oakland",
                                body: "By your host, Marley BenShalom, director of the Mindful Garden Collective at Laney College in Oakland:

The Mindful Garden Collective is a social innovation project lead by students that empowers other students to create their own adventure through the revitalization and expansion of an urban space. We are committed to the wellness of our locality by providing organic food to those in need and by hosting a space for community gatherings. We believe in serving the community as a part of a larger effort to consciously influence the evolution of the planet in the name of synergy, compassion, and love.

The Laney edible garden is located in Oakland, CA in the Peralta district next to Lake Merritt. It was first started six years ago by a man who has been supporting agricultural growth and restoration throughout the Eastbay his entire life. Kenneth Kolevzon aka Grey is a key activist, teacher, and friend who supports some of the most influential projects throughout the bay. He started the Laney garden just so he would have an outdoors space to teach his High School class about the land. He continued to restore the land and expand the garden until it was big enough to feed hundreds.

We are an inner city community college serving a diverse population and our vision is to bring every one together by co-creating an outdoors inclusive wellness center. Our goals are to connect students to their food source, encourage emotional growth, community support, and restorative justice. We are currently awaiting approval to expand our space and build a food forest across the Lake Merritt canal. We host nonprofits, k-12, and are working towards becoming restitution. The garden is a place for the community to learn and grow together while supporting students to broaden their understanding of the world and realize the infinite possibilities that are available to them.

'When you are inspired by some great purpose, some extraordinary project, all your thoughts break their bonds: Your mind transcends limitations, your consciousness expands in every direction, and you find yourself in a new, great and wonderful world. Dormant forces, faculties and talents become alive, and you discover yourself to be a greater person by far than you ever dreamed yourself to be.' ",
                                price: "$5"
                              },

                              {host_id: 6,
                                title: "Housing Complex",
                                details: "The Media and Urban Development",
                                date: Date.new(2015,12,29),
                                start_time: Time.new(2015, 12, 29, 4, 0, 0),
                                current_attendees: 15,
                                max_attendees: 20,
                                lat: 37.789995,
                                lng: -122.404536,
                                location: "Mother Jones Headquarters, San Francisco",
                                body: "The quickly changing urban landscape of San Francisco is a hot topic in local papers. How does media coverage on urban development here in the Bay Area compare with coverage elsewhere in the US?

Mother Jones Senior Editor Aaron Wiener will host a workshop on local papers’ coverage of topics including development, housing, transportation, neighborhoods, and education. Reporters, bloggers, neighborhood advocates, and anyone interested in urban studies are encouraged to join as Aaron hosts an open discussion on how to fairly represent communities and their relationship with the city. Guests are encouraged to come to the workshop with articles, blogposts, or other media for Aaron and other guests to discuss.

The topic is a personal passion of Aaron’s; his Housing Complex blog for the Washington City Paper recently won first place for an individual blog at the Association of Alternative Newsmedia awards.  He will bring years of journalistic experience as well as a cross-country perspective to on of the Bay Area’s hottest media topics.",
                                price: "$10"
                              },

                              {host_id: 1,
                                title: "Play Fetch",
                                details: "Who is a good boy?",
                                date: Date.new(2015,9,24),
                                start_time: Time.new(2015, 9, 24, 4, 0, 0),
                                current_attendees: 15,
                                max_attendees: 20,
                                location: "Golden Gate Park",
                                body: "Learn to chase a ball",
                                price: "$100"
                              },

                              {host_id: 2,
                                title: "Learn Ruby on Rails",
                                details: "Understanding the MVC framework",
                                date: Date.new(2015,9,5),
                                start_time: Time.new(2015, 9, 5, 4, 0, 0),
                                current_attendees: 15,
                                max_attendees: 20,
                                location: "App Academy, San Francisco",
                                body: "Full-stack development",
                                price: "$10"
                              },

                              {host_id: 2,
                                title: "Archaeological excavation",
                                details: "Learn How to Dig",
                                date: Date.new(2015,7,24),
                                start_time: Time.new(2015, 7, 24, 4, 0, 0),
                                current_attendees: 15,
                                max_attendees: 20,
                                location: "Archaeological Research Facility, Berkeley",
                                body: "Understanding stratigraphy, history, and getting your hands dirty",
                                price: "$100"
                              },

                              {host_id: 3,
                                title: "Touring Wine Caves",
                                details: "Beneath the Soil in Sonoma",
                                date: Date.new(2015,8,14),
                                start_time: Time.new(2015, 8, 14, 4, 0, 0),
                                current_attendees: 15,
                                max_attendees: 20,
                                location: "Hamel Family Wines, Sonoma",
                                body: "Get an insider's peak at an upscale Sonoma winery",
                                price: "$100"
                              },

                              {host_id: 3,
                                title: "Biking through Wine Country",
                                details: "A bicycle tour through Alexander Valley's vineyards",
                                date: Date.new(2015,9,1),
                                start_time: Time.new(2015, 9, 1, 4, 0, 0),
                                current_attendees: 30,
                                max_attendees: 30,
                                location: "Alexander Valley, CA",
                                body: "Bike in sun-soaked Alexander Valley and visit three wineries on the way",
                                price: "$30"
                              },

                              {host_id: 4,
                                title: "Natural plasters",
                                details: "Learn to use timeless techniques",
                                date: Date.new(2015,7,1),
                                start_time: Time.new(2015, 7, 1, 4, 0, 0),
                                current_attendees: 10,
                                max_attendees: 30,
                                location: "Green Fairie Farm, Berkeley",
                                body: "Complete construction on a naturally-built goat shed",
                                price: "$10"
                              },

                              {host_id: 5,
                                title: "Acro-Yoga",
                                details: "Find the natural balance between serenity and daredevil",
                                date: Date.new(2015,10,4),
                                start_time: Time.new(2015, 10, 4, 4, 0, 0),
                                current_attendees: 10,
                                max_attendees: 14,
                                location: "Dolores Park, San Francisco",
                                body: "Defy gravity and feel at peace with your partner",
                                price: "$14"
                              },

                              {host_id: 6,
                                title: "Writing a Cover Story",
                                details: "Find the hook to captivate readers",
                                date: Date.new(2015,8,19),
                                start_time: Time.new(2015, 8, 19, 4, 0, 0),
                                current_attendees: 10,
                                max_attendees: 14,
                                location: "Mother Jones, San Francisco",
                                body: "Learn with journalist Aaron Wiener",
                                price: "$12"
                              },

                              {host_id: 7,
                                title: "Fire Dancing",
                                details: "Meld Agility and Awe with Performance",
                                date: Date.new(2015,11,24),
                                start_time: Time.new(2015, 11, 13, 4, 0, 0),
                                current_attendees: 4,
                                max_attendees: 9,
                                lat: 37.781438,
                                lng: -122.407479,
                                location: "Temple of Poi, San Francisco",
                                body: "From poi to fire-breathing, fire-performance never fails to catch the eye. In this workshop, you’ll be introduced to a variety of fire-dancing techniques, including the instructor’s favorite, contact staff.

Your host Ben will instruct guests in some basic fire-dancing movements.  Don’t worry—the only time that the objects will be lit will be at the end of the workshop, when Ben gives a full show of some of his favorite moves.

Enjoy the meeting place between performance, agility, and adrenaline in this blazing workshop, and get ready to wow your friends with your new hobby.",
                                price: "$10"
                              }

                              ])


                              #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

photos = Photo.create([{name: 'Noah', imageable_type: "User", imageable_id: 2, url: "http://res.cloudinary.com/drfyambuq/image/upload/c_crop,h_203,w_200,x_0,y_0/v1445277732/noah_profile_bsiwvo.jpg"},

                      {name: 'Ethan team on roof', imageable_type: "Workshop", imageable_id: 4, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277793/ethan_team_project_qrkhji.jpg"},
                      {name: 'Nubian2', imageable_type: "Workshop", imageable_id: 4, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277797/nubian2_dn83ew.jpg"},
                      {name: '0_Nubian', imageable_type: "Workshop", imageable_id: 4, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277795/nubian_vault_mlieow.jpg"},
                      {name: 'Team', imageable_type: "Workshop", imageable_id: 4, url: "http://res.cloudinary.com/drfyambuq/image/upload/c_crop,h_842,w_750/v1445277797/ethan_team_ijlpkq.jpg"},
                      {name: 'EthanOven', imageable_type: "Workshop", imageable_id: 4, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277795/ethan_oven_q2foyu.jpg"},
                      {name: 'Ethan', imageable_type: "User", imageable_id: 4, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277732/ethan_profile_otnhh9.jpg"},

                      {name: 'Bottle and Barrels', imageable_type: "Workshop", imageable_id: 3, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277797/bottle_and_barrels_suobpz.jpg"},
                      {name: 'Cheers', imageable_type: "Workshop", imageable_id: 3, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277791/cheers_vdb5th.jpg"},
                      {name: 'Glass', imageable_type: "Workshop", imageable_id: 3, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277789/glass_f1ptq7.jpg"},
                      {name: 'grapes and barrel', imageable_type: "Workshop", imageable_id: 3, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277791/grapes_and_barrel_y9y7wn.jpg"},
                      {name: 'wine_bottles', imageable_type: "Workshop", imageable_id: 3, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277801/wine_bottles_b0ffcb.jpg"},
                      {name: 'Limor', imageable_type: "User", imageable_id: 3, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277757/limor_profile_enwwr4.jpg"},

                      {name: '0_coding-demo', imageable_type: "Workshop", imageable_id: 1, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277738/0_coding_demo_hl57bu.jpg"},
                      {name: 'atom_screenshot', imageable_type: "Workshop", imageable_id: 1, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277734/atom_screenshot_grxxuw.png"},
                      {name: 'anthony_and_edmund', imageable_type: "Workshop", imageable_id: 1, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277742/anthony_and_edmund_fpb3g6.jpg"},
                      {name: '1_whiteboarding', imageable_type: "Workshop", imageable_id: 1, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277738/whiteboarding_atexot.jpg"},

                      {name: 'Marley', imageable_type: "User", imageable_id: 5, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277735/marley_ocqyib.jpg"},
                      {name: 'garden2', imageable_type: "Workshop", imageable_id: 5, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277800/garden2_v599d3.jpg"},
                      {name: 'garden3', imageable_type: "Workshop", imageable_id: 5, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277799/garden3_etlrew.jpg"},
                      {name: '0_garden4', imageable_type: "Workshop", imageable_id: 5, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277800/garden4_q1mtcw.jpg"},
                      {name: 'garden', imageable_type: "Workshop", imageable_id: 5, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277799/garden_qpyvlm.jpg"},
                      {name: 'garden5', imageable_type: "Workshop", imageable_id: 5, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277801/garden5_mvrgu6.jpg"},
                      {name: 'feet', imageable_type: "Workshop", imageable_id: 5, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277797/feet_ymilrb.jpg"},


                      {name: 'Rumo', imageable_type: "User", imageable_id: 1, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277744/rumo_ruiidb.png"},
                      {name: '0_hike2', imageable_type: "Workshop", imageable_id: 2, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277767/0_hike2_g417fd.jpg"},
                      {name: 'beach', imageable_type: "Workshop", imageable_id: 2, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277755/beach_lb72vw.png"},
                      {name: 'ears', imageable_type: "Workshop", imageable_id: 2, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277823/rumo_ears_tmvo2m.png"},
                      {name: 'hike', imageable_type: "Workshop", imageable_id: 2, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277768/hike_o5ayb0.jpg"},
                      {name: 'pack', imageable_type: "Workshop", imageable_id: 2, url: "http://res.cloudinary.com/drfyambuq/image/upload/c_scale,w_800/v1445277800/pack_olie1y.png"},
                      {name: 'tent', imageable_type: "Workshop", imageable_id: 2, url: "http://res.cloudinary.com/drfyambuq/image/upload/c_scale,h_863/v1445277794/tent_hkpipk.png"},
                      {name: 'tongue', imageable_type: "Workshop", imageable_id: 2, url: "http://res.cloudinary.com/drfyambuq/image/upload/c_scale,w_751/v1445277784/tongue_m3xgmj.png"},

                      {name: 'Aaron', imageable_type: "User", imageable_id: 6, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277731/Aaron_ms1gcg.jpg"},
                      {name: '0_street-sense', imageable_type: "Workshop", imageable_id: 6, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277801/street-sense_shmmdz.jpg"},
                      {name: 'aaron', imageable_type: "Workshop", imageable_id: 6, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277731/Aaron_ms1gcg.jpg"},
                      {name: 'mj', imageable_type: "Workshop", imageable_id: 6, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277801/mother_jones_uq5qvf.jpg"},
                      {name: 'newspaper_boy', imageable_type: "Workshop", imageable_id: 6, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277742/newspaper_boy_uqj9t1.jpg"},

                      {name: 'rumo', imageable_type: "Workshop", imageable_id: 7, url: "http://res.cloudinary.com/drfyambuq/image/upload/c_scale,h_617/v1445277774/ears_o6xcbs.jpg"},
                      {name: 'RoR', imageable_type: "Workshop", imageable_id: 8, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277801/RoR_lzpda8.jpg"},
                      {name: 'archaeology', imageable_type: "Workshop", imageable_id: 9, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277808/archaeology_v16fef.jpg"},
                      {name: 'caves', imageable_type: "Workshop", imageable_id: 10, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277741/caves_xeufor.png"},
                      {name: 'bike', imageable_type: "Workshop", imageable_id: 11, url: "http://res.cloudinary.com/drfyambuq/image/upload/c_scale,w_601/v1445277745/bike_epefxc.jpg"},
                      {name: 'plaster', imageable_type: "Workshop", imageable_id: 12, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277741/ethan_paint_vwxew4.jpg"},
                      {name: 'acro', imageable_type: "Workshop", imageable_id: 13, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277744/acro_t3newv.jpg"},
                      {name: 'boy', imageable_type: "Workshop", imageable_id: 14, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277742/newspaper_boy_uqj9t1.jpg"},

                      {name: 'Ben', imageable_type: "User", imageable_id: 7, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277732/ben_profile_zbrxlx.jpg"},
                      {name: 'Ben', imageable_type: "Workshop", imageable_id: 15, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277743/0Ben_nk4vfr.jpg"},
                      {name: 'Ben.jpg', imageable_type: "Workshop", imageable_id: 15, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277743/01Ben_s8kuzn.jpg"},
                      {name: 'ben2', imageable_type: "Workshop", imageable_id: 15, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277743/ben2_zehx74.jpg"},
                      {name: '0ben3', imageable_type: "Workshop", imageable_id: 15, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445277743/ben3_gskyhu.jpg"}
                        ])
