# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Workshop.destroy_all
Photo.destroy_all
Signup.destroy_all
Review.destroy_all

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

{user_name: "Ben", password: "password123", first_name: "Ben", last_name: "Mossbarger", about_me:"A laser and optical engineer by profession, Ben is a man who enjoys eclectic performance-focused hobbies, ranging from trapeze to fire-dancing to burlesque and clowning. His performances draw fascinated crowds and his art projects at Burning Man have attracted media attention. He enjoys nothing more than sharing his passions and inviting new friends to join in on his creative spirit. "},

{user_name: "bugs@bunny.com", password: "bugsbunny", first_name: "Bugs", last_name: "Bunny", about_me:"What's up doc? Welcome to Experiencely! I use this website all of the time to meet new friends, find new hobbies, and pick up some new skills along the way.  While you are here, play around on the profile page. Try reading and editing some of the reviews I've written, or write some new ones for the workshops I've already attended.

You can sign me up for more events on individual workshops' pages, and they will appear here on the profile page.

Tired of being Bugs? Personalize your profile! Click Update Profile to make this page your own, and click on the profile picture if you are done looking like a bunny (but it is a pretty good look, if I do say so myself!)"},

{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)},
{user_name: Faker::Internet.email, password: Faker::Internet.password(8), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, about_me:Faker::Lorem.sentence(3, true)}
                  ])




workshops = Workshop.create([{host_id: users[1].id,
                                title: "Learn React.js",
                                details: "From the Virtual DOM to Flux Architecture",
                                date: (Time.now + 9.days).to_date,
                                start_time: "6:00 PM",
                                current_attendees: 3,
                                max_attendees: 10,
                                lat: 37.781220,
                                lng: -122.411342,
                                location: "App Academy, San Francisco",
                                price: "Free",
                                body: "More and more developers are switching over to Facebook’s new front-end JavaScript library for single-page applications. React has many selling points: a lighting-quick Virtual DOM, modular components, JSX syntax, Flux’s unidirectional flow data, and much more.

One of the best things about React and Flux are their simplicity: JSX resembles HTML/XML, and Flux is more of a pattern then a framework, so it can be implemented without having to learn much new code. While relatively easy to learn, they are powerful tools for building large applications with data that changes over time.

Your host for this workshop is Experiencely’s founder, Noah Wiener, who designed the Experiencely website using React and Flux architecture on top of a Rails backend.  Noah is a soon-to-be graduate of San Francisco’s prestigious App Academy, a web development bootcamp focusing on Rails and React development.

This workshop will be held in the heart of San Francisco’s tech scene at the App Academy offices. The workshop will go back-and-forth between demo and lecture, as Noah introduces guests to React components, the React router, and Flux’s unidirectional data model. At the end of the lecture, guests will each sit down at a computer and work through Experiencely’s source code to see React in action!"
                              },
                              {host_id: users[1-1].id,
                                title: "Barking Lessons",
                                details: "Professional Advice from My Dog",
                                date: (Time.now + 25.days).to_date,
                                start_time: "2:00 PM",
                                current_attendees: 5,
                                max_attendees: 15,
                                lat: 37.873549,
                                lng: -122.274688,
                                location: "Ohlone Dog Park, Berkeley",
                                body: "Woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof
woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof
woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof woof",
                                price: "$20"
                              },
                              {host_id: users[3-1].id,
                                title: "Wine Tasting",
                                details: "Discover California Zinfandels",
                                date: (Time.now + 12.days).to_date,
                                start_time: "5:00 PM",
                                current_attendees: 5,
                                max_attendees: 10,
                                lat: 37.793899,
                                lng: -122.266470,
                                location: "Dashe Cellars, Oakland",
                                body: "Ever feel intimidated by a wine list at a restaurant? Want a behind-the-scenes view into the world of California wines? Join other wine enthusiasts for a private tasting experience after hours in the heart of Oakland’s Jack London Square, and be able to impress your friends by using the word terroir correctly in a sentence.

You’ll join Limor, Experiencely’s most highly rated host, for a private tasting at the Bay Area’s hottest urban winery. Limor will take your palette on a journey from rocky zinfandel vineyards in Sonoma to the volcanic foothills of the Sierras. Guests will discover the subtleties of all 15 varietals served at Dashe Cellars.

Limor developed her love of wine while living in the heart of Malbec country on the slopes of the Argentinian Andes, and has experience working in Sonoma before moving into the world of urban wineries here in the Bay Area.  She will be your guide as you learn to distinguish a Sauvignon Blanc from a Chardonnay and how to pair the right wine with your favorite meal.",
                                price: "$20"
                              },
                              {host_id: users[4-1].id,
                                title: "Natural Building",
                                details: "Learn Traditional Adobe Brickmaking",
                                date: (Time.now + 17.days).to_date,
                                start_time: "1:00 PM",
                                current_attendees: 5,
                                max_attendees: 30,
                                lat: 37.864702,
                                lng: -122.289131,
                                location: "Green Fairie Farm, Berkeley",
                                body: "Our team will get together to finish building a Nubian Vault at Berkeley’s Green Fairie Farm. Guests will learn new natural building techniques in a farm setting nestled in bustling West Berkeley. You’ll join host Ethan Prantera, a veteran natural builder and a born teacher, to build a hybrid cob/adobe multi-purpose structure to house interns, process food, and store associated tools. 

The building features a Nubian Vault style masonry roof and features organic lines created with earthen materials as well as with innovative bamboo tensile reinforcement. With the exception of the framing for doors and windows, this building is made without wood. The shaded roof structure is a classic post-and-beam design with shaped bracing to aesthetically mimic the shape of the building.

In this fun, team-building workshop, Ethan will guide guests through the processes used in vault construction, and you’ll go home with the skills needed to get your natural building project started!  Visitors will have the chance to become part of the Bay Area’s natural building community, assisting each other on sustainable and natural construction projects.",
                                price: "$10"
                              },
                              {host_id: users[5-1].id,
                                title: "Urban Gardening",
                                details: "Planting and Sustainability",
                                date: (Time.now + 27.days).to_date,
                                start_time: "3:00 PM",
                                current_attendees: 12,
                                max_attendees: 20,
                                lat: 37.796534,
                                lng: -122.263412,
                                location: "Mindful Garden Collective, Oakland",
                                body: "By your host, Marley BenShalom, director of the Mindful Garden Collective at Laney College in Oakland:

The Mindful Garden Collective is a social innovation project lead by students that empowers other students to create their own adventure through the revitalization and expansion of an urban space. We are committed to the wellness of our locality by providing organic food to those in need and by hosting a space for community gatherings. We believe in serving the community as a part of a larger effort to consciously influence the evolution of the planet in the name of synergy, compassion, and love.

The Laney edible garden is located in Oakland, CA in the Peralta district next to Lake Merritt. It was first started six years ago by a man who has been supporting agricultural growth and restoration throughout the Eastbay his entire life. Kenneth Kolevzon aka Grey is a key activist, teacher, and friend who supports some of the most influential projects throughout the bay. He started the Laney garden just so he would have an outdoors space to teach his High School class about the land. He continued to restore the land and expand the garden until it was big enough to feed hundreds.

We are an inner city community college serving a diverse population and our vision is to bring every one together by co-creating an outdoors inclusive wellness center. Our goals are to connect students to their food source, encourage emotional growth, community support, and restorative justice. We are currently awaiting approval to expand our space and build a food forest across the Lake Merritt canal. We host nonprofits, k-12, and are working towards becoming restitution. The garden is a place for the community to learn and grow together while supporting students to broaden their understanding of the world and realize the infinite possibilities that are available to them.

'When you are inspired by some great purpose, some extraordinary project, all your thoughts break their bonds: Your mind transcends limitations, your consciousness expands in every direction, and you find yourself in a new, great and wonderful world. Dormant forces, faculties and talents become alive, and you discover yourself to be a greater person by far than you ever dreamed yourself to be.' ",
                                price: "$5"
                              },

                              {host_id: users[6-1].id,
                                title: "Housing Complex",
                                details: "The Media and Urban Development",
                                date: (Time.now + 32.days).to_date,
                                start_time: "7:00 PM",
                                current_attendees: 8,
                                max_attendees: 20,
                                lat: 37.789995,
                                lng: -122.404536,
                                location: "Mother Jones HQ, San Francisco",
                                body: "The quickly changing urban landscape of San Francisco is a hot topic in local papers. How does media coverage on urban development here in the Bay Area compare with coverage elsewhere in the US?

Mother Jones Senior Editor Aaron Wiener will host a workshop on local papers’ coverage of topics including development, housing, transportation, neighborhoods, and education. Reporters, bloggers, neighborhood advocates, and anyone interested in urban studies are encouraged to join as Aaron hosts an open discussion on how to fairly represent communities and their relationship with the city. Guests are encouraged to come to the workshop with articles, blogposts, or other media for Aaron and other guests to discuss.

The topic is a personal passion of Aaron’s; his Housing Complex blog for the Washington City Paper recently won first place for an individual blog at the Association of Alternative Newsmedia awards.  He will bring years of journalistic experience as well as a cross-country perspective to on of the Bay Area’s hottest media topics.",
                                price: "$10"
                              },

                              {host_id: users[1-1].id,
                                title: "Play Fetch",
                                details: "Who is a good boy?",
                                date: (Time.now - 15.days).to_date,
                                start_time: "1:00 PM",
                                current_attendees: 16,
                                max_attendees: 20,
                                location: "Golden Gate Park",
                                body: "Learn to chase a ball",
                                price: "$100"
                              },

                              {host_id: users[2-1].id,
                                title: "Learn Ruby on Rails",
                                details: "Understanding the MVC framework",
                                date: (Time.now - 2.days).to_date,
                                start_time: "1:00 PM",
                                current_attendees: 12,
                                max_attendees: 20,
                                location: "App Academy, San Francisco",
                                body: "Full-stack development",
                                price: "$10"
                              },

                              {host_id: users[2-1].id,
                                title: "Archaeological excavation",
                                details: "Learn How to Dig",
                                date: (Time.now - 8.days).to_date,
                                start_time: "1:00 PM",
                                current_attendees: 12,
                                max_attendees: 17,
                                location: "Archaeological Research Facility, Berkeley",
                                body: "Understanding stratigraphy, history, and getting your hands dirty",
                                price: "$15"
                              },

                              {host_id: users[3-1].id,
                                title: "Touring Wine Caves",
                                details: "Beneath the Soil in Sonoma",
                                date: (Time.now - 15.days).to_date,
                                start_time: "1:00 PM",
                                current_attendees: 12,
                                max_attendees: 19,
                                location: "Hamel Family Wines, Sonoma",
                                body: "Get an insider's peak at an upscale Sonoma winery",
                                price: "$16"
                              },

                              {host_id: users[3-1].id,
                                title: "Biking through Wine Country",
                                details: "Tour Alexander Valley's vineyards",
                                date: (Time.now - 43.days).to_date,
                                start_time: "1:00 PM",
                                current_attendees: 25,
                                max_attendees: 30,
                                location: "Alexander Valley, CA",
                                body: "Bike in sun-soaked Alexander Valley and visit three wineries on the way",
                                price: "$30"
                              },

                              {host_id: users[4-1].id,
                                title: "Natural plasters",
                                details: "Learn timeless techniques",
                                date: (Time.now - 18.days).to_date,
                                start_time: "1:00 PM",
                                current_attendees: 5,
                                max_attendees: 10,
                                location: "Green Fairie Farm, Berkeley",
                                body: "Complete construction on a naturally-built goat shed",
                                price: "$10"
                              },

                              {host_id: users[5-1].id,
                                title: "Acro-Yoga",
                                details: "Balance between serenity and daredevil",
                                date: (Time.now - 4.days).to_date,
                                start_time: "1:00 PM",
                                current_attendees: 5,
                                max_attendees: 14,
                                location: "Dolores Park, San Francisco",
                                body: "Defy gravity and feel at peace with your partner",
                                price: "$14"
                              },

                              {host_id: users[6-1].id,
                                title: "Writing a Cover Story",
                                details: "Find the hook to captivate readers",
                                date: (Time.now - 28.days).to_date,
                                start_time: "1:00 PM",
                                current_attendees: 5,
                                max_attendees: 10,
                                location: "Mother Jones, San Francisco",
                                body: "Learn with journalist Aaron Wiener",
                                price: "$12"
                              },

                              {host_id: users[7-1].id,
                                title: "Fire Dancing II",
                                details: "Meld Agility and Awe with Performance",
                                date: (Time.now + 21.days).to_date,
                                start_time: "8:00 PM",
                                current_attendees: 8,
                                max_attendees: 15,
                                lat: 37.781438,
                                lng: -122.407479,
                                location: "Temple of Poi, San Francisco",
                                body: "From poi to fire-breathing, fire-performance never fails to catch the eye. In part two of this workshop, you’ll be introduced to a variety of fire-dancing techniques, including the instructor’s favorite, contact staff.

Your host Ben will instruct guests in some basic fire-dancing movements.  Don’t worry—the only time that the objects will be lit will be at the end of the workshop, when Ben gives a full show of some of his favorite moves.

Enjoy the meeting place between performance, agility, and adrenaline in this blazing workshop, and get ready to wow your friends with your new hobby.",
                                price: "$10"
                              },

                              {host_id: users[7-1].id,
                                title: "Fire Dancing I",
                                details: "Meld Agility and Awe with Performance",
                                date: (Time.now - 3.days).to_date,
                                start_time: "8:00 PM",
                                current_attendees: 5,
                                max_attendees: 15,
                                lat: 37.781438,
                                lng: -122.407479,
                                location: "Temple of Poi, San Francisco",
                                body: "From poi to fire-breathing, fire-performance never fails to catch the eye. In part one of this workshop, you’ll be introduced to a variety of fire-dancing techniques, including the instructor’s favorite, contact staff.

Your host Ben will instruct guests in some basic fire-dancing movements.  Don’t worry—the only time that the objects will be lit will be at the end of the workshop, when Ben gives a full show of some of his favorite moves.

Enjoy the meeting place between performance, agility, and adrenaline in this blazing workshop, and get ready to wow your friends with your new hobby.",
                                price: "$10"
                              }

                              ])


                              #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

photos = Photo.create([{name: 'Noah', imageable_type: "User", imageable_id: users[2-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/c_crop,h_203,w_200,x_0,y_0/v1445277732/noah_profile_bsiwvo.jpg"},

                      {name: 'Ethan team on roof', imageable_type: "Workshop", imageable_id: workshops[4-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277793/ethan_team_project_qrkhji.jpg"},
                      {name: 'Nubian2', imageable_type: "Workshop", imageable_id: workshops[4-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277797/nubian2_dn83ew.jpg"},
                      {name: '0_Nubian', imageable_type: "Workshop", imageable_id: workshops[4-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277795/nubian_vault_mlieow.jpg"},
                      {name: 'Team', imageable_type: "Workshop", imageable_id: workshops[4-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/c_crop,h_842,w_750/v1445277797/ethan_team_ijlpkq.jpg"},
                      {name: 'EthanOven', imageable_type: "Workshop", imageable_id: workshops[4-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277795/ethan_oven_q2foyu.jpg"},
                      {name: 'Ethan', imageable_type: "User", imageable_id: users[4-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277732/ethan_profile_otnhh9.jpg"},

                      {name: 'Bottle and Barrels', imageable_type: "Workshop", imageable_id: workshops[3-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277797/bottle_and_barrels_suobpz.jpg"},
                      {name: 'Cheers', imageable_type: "Workshop", imageable_id: workshops[3-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277791/cheers_vdb5th.jpg"},
                      {name: 'Glass', imageable_type: "Workshop", imageable_id: workshops[3-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277789/glass_f1ptq7.jpg"},
                      {name: 'grapes and barrel', imageable_type: "Workshop", imageable_id: workshops[3-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277791/grapes_and_barrel_y9y7wn.jpg"},
                      {name: 'wine_bottles', imageable_type: "Workshop", imageable_id: workshops[3-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277801/wine_bottles_b0ffcb.jpg"},
                      {name: 'Limor', imageable_type: "User", imageable_id: users[3-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277757/limor_profile_enwwr4.jpg"},

                      {name: '0_coding-demo', imageable_type: "Workshop", imageable_id: workshops[1-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277738/0_coding_demo_hl57bu.jpg"},
                      {name: 'atom_screenshot', imageable_type: "Workshop", imageable_id: workshops[1-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277734/atom_screenshot_grxxuw.png"},
                      {name: 'anthony_and_edmund', imageable_type: "Workshop", imageable_id: workshops[1-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277742/anthony_and_edmund_fpb3g6.jpg"},
                      {name: '1_whiteboarding', imageable_type: "Workshop", imageable_id: workshops[1-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277738/whiteboarding_atexot.jpg"},
                      {name: 'react', imageable_type: "Workshop", imageable_id: workshops[1-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1446440937/react_d3urdk.png"},


                      {name: 'Marley', imageable_type: "User", imageable_id: users[5-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277735/marley_ocqyib.jpg"},
                      {name: 'garden2', imageable_type: "Workshop", imageable_id: workshops[5-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277800/garden2_v599d3.jpg"},
                      {name: 'garden3', imageable_type: "Workshop", imageable_id: workshops[5-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277799/garden3_etlrew.jpg"},
                      {name: '0_garden4', imageable_type: "Workshop", imageable_id: workshops[5-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277800/garden4_q1mtcw.jpg"},
                      {name: 'garden', imageable_type: "Workshop", imageable_id: workshops[5-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277799/garden_qpyvlm.jpg"},
                      {name: 'garden5', imageable_type: "Workshop", imageable_id: workshops[5-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277801/garden5_mvrgu6.jpg"},
                      {name: 'feet', imageable_type: "Workshop", imageable_id: workshops[5-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277797/feet_ymilrb.jpg"},


                      {name: 'Rumo', imageable_type: "User", imageable_id: users[1-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277744/rumo_ruiidb.png"},
                      {name: '0_hike2', imageable_type: "Workshop", imageable_id: workshops[2-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277767/0_hike2_g417fd.jpg"},
                      {name: 'beach', imageable_type: "Workshop", imageable_id: workshops[2-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277755/beach_lb72vw.png"},
                      {name: 'ears', imageable_type: "Workshop", imageable_id: workshops[2-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277823/rumo_ears_tmvo2m.png"},
                      {name: 'hike', imageable_type: "Workshop", imageable_id: workshops[2-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277768/hike_o5ayb0.jpg"},
                      {name: 'pack', imageable_type: "Workshop", imageable_id: workshops[2-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/c_scale,w_800/v1445277800/pack_olie1y.png"},
                      {name: 'tent', imageable_type: "Workshop", imageable_id: workshops[2-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/c_scale,h_863/v1445277794/tent_hkpipk.png"},
                      {name: 'tongue', imageable_type: "Workshop", imageable_id: workshops[2-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/c_scale,w_751/v1445277784/tongue_m3xgmj.png"},

                      {name: 'Aaron', imageable_type: "User", imageable_id: users[6-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277731/Aaron_ms1gcg.jpg"},
                      {name: '0_street-sense', imageable_type: "Workshop", imageable_id: workshops[6-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277801/street-sense_shmmdz.jpg"},
                      {name: 'aaron', imageable_type: "Workshop", imageable_id: workshops[6-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277731/Aaron_ms1gcg.jpg"},
                      {name: 'mj', imageable_type: "Workshop", imageable_id: workshops[6-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277801/mother_jones_uq5qvf.jpg"},
                      {name: 'newspaper_boy', imageable_type: "Workshop", imageable_id: workshops[6-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277742/newspaper_boy_uqj9t1.jpg"},

                      {name: 'rumo', imageable_type: "Workshop", imageable_id: workshops[7-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/c_scale,h_617/v1445277774/ears_o6xcbs.jpg"},
                      {name: 'RoR', imageable_type: "Workshop", imageable_id: workshops[8-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277801/RoR_lzpda8.jpg"},
                      {name: 'archaeology', imageable_type: "Workshop", imageable_id: workshops[9-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277808/archaeology_v16fef.jpg"},
                      {name: 'caves', imageable_type: "Workshop", imageable_id: workshops[10-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277741/caves_xeufor.png"},
                      {name: 'bike', imageable_type: "Workshop", imageable_id: workshops[11-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/c_scale,w_601/v1445277745/bike_epefxc.jpg"},
                      {name: 'plaster', imageable_type: "Workshop", imageable_id: workshops[12-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277741/ethan_paint_vwxew4.jpg"},
                      {name: 'acro', imageable_type: "Workshop", imageable_id: workshops[13-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277744/acro_t3newv.jpg"},
                      {name: 'boy', imageable_type: "Workshop", imageable_id: workshops[14-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277742/newspaper_boy_uqj9t1.jpg"},

                      {name: 'Ben', imageable_type: "User", imageable_id: users[7-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277732/ben_profile_zbrxlx.jpg"},
                      {name: 'Ben', imageable_type: "Workshop", imageable_id: workshops[15-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277743/0Ben_nk4vfr.jpg"},
                      {name: 'Ben.jpg', imageable_type: "Workshop", imageable_id: workshops[15-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277743/01Ben_s8kuzn.jpg"},
                      {name: 'ben2', imageable_type: "Workshop", imageable_id: workshops[15-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277743/ben2_zehx74.jpg"},
                      {name: '0ben3', imageable_type: "Workshop", imageable_id: workshops[15-1].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277743/ben3_gskyhu.jpg"},
                      {name: 'ben2', imageable_type: "Workshop", imageable_id: workshops[15].id, url: "https://res.cloudinary.com/drfyambuq/image/upload/v1445277743/ben2_zehx74.jpg"},
                      {name: 'Bugs', imageable_type: "User", imageable_id: users[7].id, url: "http://res.cloudinary.com/drfyambuq/image/upload/v1445639967/bugs_pphxai.jpg"},
                      {name: 'faker', imageable_type: "User", imageable_id: users[8].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[9].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[10].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[11].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[12].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[13].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[14].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[15].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[16].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[17].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[18].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[19].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[20].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[21].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[22].id, url: Faker::Avatar.image},
                      {name: 'faker', imageable_type: "User", imageable_id: users[23].id, url: Faker::Avatar.image}
                        ])

signups = Signup.create([{user_id:users[21].id, workshop_id:workshops[6].id},
{user_id:users[23].id, workshop_id:workshops[6].id},
{user_id:users[3].id, workshop_id:workshops[6].id},
{user_id:users[15].id, workshop_id:workshops[6].id},
{user_id:users[5].id, workshop_id:workshops[7].id},
{user_id:users[18].id, workshop_id:workshops[7].id},
{user_id:users[9].id, workshop_id:workshops[7].id},
{user_id:users[0].id, workshop_id:workshops[7].id},
{user_id: users[20].id, workshop_id: workshops[8].id},
{user_id: users[0].id, workshop_id: workshops[8].id},
{user_id: users[1].id, workshop_id: workshops[9].id},
{user_id: users[7].id, workshop_id: workshops[9].id},
{user_id: users[21].id, workshop_id: workshops[9].id},
{user_id: users[5].id, workshop_id: workshops[10].id},
{user_id: users[0].id, workshop_id: workshops[10].id},
{user_id: users[22].id, workshop_id: workshops[10].id},
{user_id: users[16].id, workshop_id: workshops[11].id},
{user_id: users[4].id, workshop_id: workshops[11].id},
{user_id: users[7].id, workshop_id: workshops[11].id},
{user_id: users[3].id, workshop_id: workshops[12].id},
{user_id: users[23].id, workshop_id: workshops[12].id},
{user_id: users[14].id, workshop_id: workshops[12].id},
{user_id: users[9].id, workshop_id: workshops[13].id},
{user_id: users[3].id, workshop_id: workshops[13].id},
{user_id: users[19].id, workshop_id: workshops[13].id},
{user_id: users[0].id, workshop_id: workshops[13].id},
{user_id: users[17].id, workshop_id: workshops[15].id},
{user_id: users[7].id, workshop_id: workshops[15].id},
{user_id: users[6].id, workshop_id: workshops[15].id},
{user_id: users[7].id, workshop_id: workshops[7].id},
{user_id: users[7].id, workshop_id: workshops[10].id},
{user_id: users[0].id, workshop_id: workshops[1].id},
{user_id: users[0].id, workshop_id: workshops[4].id},
{user_id: users[0].id, workshop_id: workshops[5].id},
{user_id: users[1].id, workshop_id: workshops[1].id},
{user_id: users[1].id, workshop_id: workshops[3].id},
{user_id: users[1].id, workshop_id: workshops[4].id},
{user_id: users[1].id, workshop_id: workshops[5].id},
{user_id: users[1].id, workshop_id: workshops[6].id},
{user_id: users[2].id, workshop_id: workshops[1].id},
{user_id: users[2].id, workshop_id: workshops[3].id},
{user_id: users[2].id, workshop_id: workshops[6].id},
{user_id: users[3].id, workshop_id: workshops[2].id},
{user_id: users[7].id, workshop_id: workshops[0].id},
{user_id: users[7].id, workshop_id: workshops[1].id},
{user_id: users[7].id, workshop_id: workshops[5].id},
{user_id: users[7].id, workshop_id: workshops[13].id}

])

reviews = Review.create([{user_id: users[21].id, workshop_id: workshops[6].id, title: "Learned to Fetch", body: "I never knew how much fun it was to chase sticks until Rumo taught us all proper technique. I’d love to be a dog!", rating: 5},

{user_id: users[23].id, workshop_id: workshops[6].id, title: "Amazing Ears", body: "I’ll admit--I didn’t come to this workshop to learn how to play fetch. I’ve been playing fetch professionally for years.  But I heard the instructor, Rumo, had incredibly huge ears, and I had to check it out in person.  Turns out it is true! That is one great dog!", rating: 5},

{user_id: users[2].id, workshop_id: workshops[6].id, title: "Greatest Dog There Ever Was", body: "Rumo is the greatest dog that ever lived.  Take a class with him if you get a chance!", rating: 5},

{user_id: users[15].id, workshop_id: workshops[6].id, title: "Taught by a Dog", body: "I can’t believe Experiencely lets dogs host workshops! To be fair, this was an amazing dog, but come on!", rating: 2},

{user_id: users[5].id, workshop_id: workshops[7].id, title: "Great Course", body: "Ruby is an amazing language, and Noah was a fantastic instructor.  I had a great time with this workshop, and can’t wait to take his React.js workshop soon!", rating: 5},

{user_id: users[7].id, workshop_id: workshops[7].id, title: "RoR Demystified", body: "I’ve read a few books on Ruby, but this course opened up my eyes to MVC frameworks and the power of Rails. Great workshop!", rating: 5},

{user_id: users[9].id, workshop_id: workshops[7].id, title: "Good Community", body: "Our host, Noah, has done a great job of extending the tech scene to outsiders like myself.  I had a really wonderful time learning the basics of rails, and the reading list that he supplied will allow me to keep learning", rating: 5},

{user_id: users[0].id, workshop_id: workshops[7].id, title: "Woof", body: "I didn’t really get much from this class, being a dog.  Experiencely, take note: Add a warning for all workshops that require opposable thumbs!  I’m a dog and had a very hard time coding.", rating: 2},
{user_id: users[4].id, workshop_id: workshops[8].id, title: "Archaeology is so much fun", body: "Noah set up a model excavation for us to learn about stratigraphy, superposition, survey, and excavation techniques.  Archaeology is tough but meticulous work, and I was inspired to apply to participate in international excavations after this workshop.", rating: 5},

{user_id: users[20].id, workshop_id: workshops[8].id, title: "Archaeology", body: "History is fascinating, and Noah is a great guide.  Between his experience digging on three continents and his academic background in archaeology, he was the perfect instructor. I’m only giving him four stars because he decided to switch careers to software development--I would love to learn more about archaeology!", rating: 4},

{user_id: users[0].id, workshop_id: workshops[8].id, title: "Digging", body: "As a dog, I absolutely love to dig.  This workshop opened my eyes to a whole new side of digging: better understanding the past! I can’t wait to go on my next excavation--maybe I’ll dig up some bones to study (and chew on!).", rating: 5},

{user_id: users[1].id, workshop_id: workshops[9].id, title: "Fascinating", body: "I had an amazing time learning about wine with Limor, and the tour of Hamel’s wine caves was incredible.  The open geology of the caves gave concepts of terroir a tangible reality, and I have a newfound respect for the California wine scene!", rating: 5},

{user_id: users[7].id, workshop_id: workshops[9].id, title: "Delightful", body: "This was a fantastic tour and workshop.  Limor gave us a tour of the vineyards and then walked us through the wine-making process, highlighting techniques and machinery along the way before our tasting. I learned so much and can’t wait to join her for another workshop", rating: 5},

{user_id: users[21].id, workshop_id: workshops[9].id, title: "Delicious", body: "Amazing tour with an amazing host", rating: 5},

{user_id: users[5].id, workshop_id: workshops[10].id, title: "Great Ride", body: "I can’t picture a more stunning setting for a bike ride, and we all learned a ton about wine! This is why I love Experiencely--I get to have a fun day out while learning from professionals!", rating: 5},

{user_id: users[0].id, workshop_id: workshops[10].id, title: "Amazing run", body: "As a dog, I have a hard time riding a bike, but I ran alongside the group and had a beautiful day in wine country!", rating: 5},

{user_id: users[22].id, workshop_id: workshops[10].id, title: "Learned so much!", body: "Limor knows everything about wine! After the workshop, I realized that she works at a winery right here in Oakland. Guess I don’t have to go all the way to Sonoma for a great wine experience.", rating: 5},

{user_id: users[16].id, workshop_id: workshops[11].id, title: "Guess I am not cut out for this type of work", body: "Ethan was a knowledgeable and wonderful host, but I had a hard time mastering plasters. I learned a ton about natural building techniques, and was very impressed by Ethan’s expertise, but I don’t love getting my hands dirty.", rating: 3},

{user_id: users[4].id, workshop_id: workshops[11].id, title: "Amazing", body: "Ethan was the best! We had so much fun working with plaster, and checking out the other structures that Ethan has built on the farm.  Plus, it was great to hang out with goats in Berkeley--the farm is wonderful!", rating: 5},

{user_id: users[7].id, workshop_id: workshops[11].id, title: "A Great Learning Experience", body: "I learned a ton about sustainable building techniques.  I hope Ethan teaches a class on solar water heating systems some time soon--he mentioned that he has experience building them!", rating: 4},

{user_id: users[3].id, workshop_id: workshops[12].id, title: "Learned to fly!", body: "I’ve always seen people doing acro-yoga, but figured it took years of agility training.  With Marley’s help, I was proven wrong, and managed some amazing feats in a single afternoon!", rating: 5},

{user_id: users[23].id, workshop_id: workshops[12].id, title: "Fell a few times", body: "Our hostm Marley, had a great spirit, but I am just not agile enough for yoga!", rating: 2},

{user_id: users[14].id, workshop_id: workshops[12].id, title: "Felt great for days", body: "Yoga was a blast, and Marley was a great host!", rating: 4},

{user_id: users[9].id, workshop_id: workshops[13].id, title: "Write like a pro!", body: "Aaron is an accomplished journalist, and it was great to have him guide our discussions, and he was nice enough to spend some time after class discussing how to structure a blog that I’m starting soon. ", rating: 5},

{user_id: users[2].id, workshop_id: workshops[13].id, title: "Thanks Aaron", body: "As someone who moved here from Washington, DC, I’ve been reading Aaron’s articles for years, so it was great to meet him in person to get some feedback on my own writing!", rating: 5},

{user_id: users[19].id, workshop_id: workshops[13].id, title: "Tough", body: "Guess I am not cut out to be a writer", rating: 3},

{user_id: users[0].id, workshop_id: workshops[13].id, title: "Woof", body: "Warning: Aaron’s journalism workshops are for humans, not dogs!  He prefers stories in English over those in barking. Woof woof", rating: 2},

{user_id: users[17].id, workshop_id: workshops[15].id, title: "Beautiful", body: "fire performance is a wonderful art, and Ben is a master instructor and performer!", rating: 5},

{user_id: users[7].id, workshop_id: workshops[15].id, title: "On Fire!", body: "Everyone else loved this workshop, but I got lit on fire! Luckily I’m a cartoon character, so I was alright, but be careful!", rating: 2},

{user_id: users[3].id, workshop_id: workshops[15].id, title: "Spectacular", body: "An amazing dance and a wonderful art.  Can’t wait to attend the second part of the workshop", rating: 4}
  ])
