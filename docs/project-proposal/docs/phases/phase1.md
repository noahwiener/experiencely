# Phase 1: User Authentication, Models and JSON API for users, hosts, and workshops

## Rails
### Models
* User
* host
* workshop


### Controllers
* Api::UsersController (create, new)
* SessionsController (create, new, destroy)
* Api::WorkshopsController (index, show, update)

### Views
* root.html.erb
* users/new.html.erb
* workshops/index.json.receiveAll

## Flux
### Views (React Components)
Browse--create the component page to use as landing page, will be built out in later phase.

### Stores

### Actions
ApiActions.receiveAllUsers

### ApiUtil
ApiUtil.fetchAllUsers

## Gems/Libraries
* BCrypt
