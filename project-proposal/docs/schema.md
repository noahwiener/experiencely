# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
about_me        | text      |
username        | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique

users model notes:
  has_one :photos, as: :imageable
  has many signups
  has many reviews
	has many upcoming_workshops thru signups
	has many attended_workshops thru signups
	note:--logic for above two items--if signed up && event date < today’s date, considered attended workshop


## hosts
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null, indexed, unique
description | text      | not null

hosts model notes:
  has_one :photos, as: :imageable
  has many workshops
  has many reviews through workshops


## workshops
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
host_id     | integer   | not null, foreign key (references hosts), indexed
title       | string    | not null, unique
details     | text      | not null
date        | date      | not null
start_time  | time      | not null
current_attendees | integer | not null
max_attendees     | integer |
lat         | float     | not null
lng         | float     | not null
location    | string    | not null (e.g., "a/A offices", "Dashe Cellars")

workshops model notes:
  has_many :photos, as: :imageable
  belongs to host
  has many users thru signups
  has many reviews


## reviews
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key (references users), indexed
workshop_id | integer   | not null, foreign key (references workshops), indexed
title       | string    | not null
body        | text      |
rating      | integer   | not null, minimum 1, maximum 5

review model notes:
  belongs to user
  belongs to workshop
  belongs to host through workshops

## signups
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
workshop_id | integer   | not null, foreign key (references workshops), indexed

signups model notes:
  through table to set up associations between users and workshops

## photos
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
imageable_id  | integer |
imageable_type  | string   | not null
url         | string    | not null

photo model notes:
  belongs_to :imageable, polymorphic: true
