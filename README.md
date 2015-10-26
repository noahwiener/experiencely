# Experiencely

[Heroku link][heroku]

[heroku]: http://www.experiencely.xyz/

## Minimum Viable Product

Experiencely is a Ruby on Rails/React.js web app inspired by Feastly, a community where professional chefs host private dinners.  In this adaptation, professionals will host workshops teaching guests new skills, providing unique personal experiences, and granting private access to exciting materials in their field. Experiencely allows users to:


<!-- This is a Markdown checklist. Use it to keep track of your progress! -->

- [ ] Create an account
- [ ] Log in / Log out
- [ ] Browse upcoming workshops by date
- [ ] View details, reviews, image carousels, etc for each workshop
- [ ] Read reviews of workshop hosts
- [ ] View workshops by map location
- [ ] Sign up for workshops with a variable number of guests
- [ ] Prevented from signing up for workshops that are at capacity
- [ ] Review hosts of previously attended workshops
- [ ] Update profile information
- [ ] upload a profile picture
- [ ] login as a guest
- [ ] View attended workshops, attended workshops, and reviews on profile page
- [ ] Write reviews of workshop hosts
- [ ] Edit old reviews
- [ ] View descriptive homepage when not logged in
- [ ] Redirect to browse page if logged in
- [ ] upload a profile picture

## Future Todos

- [ ] allow users to sign up as professional workshop hosts
- [ ] allow users to build workshop pages
- [ ] add additional cities, add search/filter params
- [ ] build out seed data for past workshops
- [ ] create new host profile pages
- [ ] recommend workshops based on similarity of content
- [ ] revise ratings into categories based on hospitality, education, community, fun, new skills learned

## Design Docs
* [View Wireframes][view]
* [DB schema][schema]

[view]: ./project-proposal/docs/views.md
[schema]: ./project-proposal/docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Models and JSON API for users, hosts, and workshops (1.5 days)

In phase 1, I will begin by building out the models and backend structure for users, workshops, and hosts. With basic models in place, I will create
rails (BCrypt) user authentication pages. The authentication page will direct users to
the Browse page, to be built in phase II using data from the workshops index action.

After completing authentication, I will begin setting up JSON api/controllers for users.

[Details][phase-one]

### Phase 2: Seed Data, Browse Page  (2.5 days)

I will start off phase two by adding workshop and user seed data. In adding photo seed data, I will set up polymorphic photo relationships.

Phase 2 is focused on building out the browse (main) page, which will be populated by workshops. In generating this page, I will set up Flux architecture for workshops, including react components for the browse page components as well as the Workshops store. The majority of time will be spent on the browse listing components, which will link to the workshops views that will be built in phase III.

When the basic browse page architecture is in place, I will style it with bootstrap.

[Details][phase-two]

### Phase 3: Workshops Pages (2 days)

Phase 3 builds out the workshop pages, and with them, the ability for users to sign up for a workshop.
In building a workshops page, I will set up relationships between workshops and hosts, and register events when users sign up for a workshop, which will involve setting up clickhandlers and a workshop store. I will work with google maps API to add map locations on each workshop page. Once again, bootstrap will be added once the functionality is in place.

[Details][phase-three]

### Phase 4: Profiles and Reviews (2 days)

Phase 4 builds out user profile pages, with react components for the profile page, upcoming events, past events, and reviews. Workshop reviews will persist through to their hosts. I will go back to the browse and workshop pages to add review information to these pages.

[Details][phase-four]

### Phase 5: Static pages, additional data (2 days)

Phase 5 will include the creation of the home page, the footer/navbar, updates to the login page, and other static but css-heavy contributions. The home page will require some new css elements for hash fragments. In addition, logged in users will be redirected from the home to the browse page, and will not view the home page.
The navbar will need to be aware of login status, so click handlers will need to be added to the log in, register, and log out buttons.

Finally, with the main architecture in place, I will add additional seed data, and complete the CSS.

[Details][phase-five]

### Phase 6: Bonus features (Reminaing days)

The final phase will be contingent upon how much time there is left in the project.  See bonus features (below)

### Bonus Features (TBD)
- [ ] Search feature in Browse Page
- [ ] Build a new form page for users to apply to become workshop hosts
- [ ] Expand the reviews system and database--adding review ratings based on hospitality, education, community, fun, new skills learned
- [ ] Additional CSS transitions

[phase-one]: ./project-proposal/docs/phases/phase1.md
[phase-two]: ./project-proposal/docs/phases/phase2.md
[phase-three]: ./project-proposal/docs/phases/phase3.md
[phase-four]: ./project-proposal/docs/phases/phase4.md
[phase-five]: ./project-proposal/docs/phases/phase5.md
