# Phase 4: Profiles and Reviews (1 day)

## Rails
### Models

### Controllers

### Views
* users/show.json.jbuilder
* reviews/index.json.jbuilder


## Flux
### Views (React Components)
* profile
  -profile sidebar
  -upcoming workshops
  -attended workshops
  -reviews
* Workshops
  -workshops reviews
* Browse
  -Browse listing, update reviews section


### Stores
* User Store

### Actions
* ApiActions.addReview
* ApiActions.receiveReviews
* ApiActions.receiveUsers

### ApiUtil
* ApiActions.fetchAllReviews
* ApiActions.fetchReviewsByUser


## Gems/Libraries


<!--
Phase 4 builds out user profile pages, with react components for the profile page, upcoming events, past events, and reviews. Workshop reviews will persist through to their hosts. I will go back to the browse and workshop pages to add review information to these pages. The logic for all of these events will go through the workshops store, with other elements listening for changes to each workshop's reviews. -->
