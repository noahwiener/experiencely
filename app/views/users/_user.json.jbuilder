json.extract!(user,
              :id,
              :user_name,
              :first_name,
              :last_name,
              :about_me,
              :workshops_hosted,
              :signups)

json.upcoming(user.upcoming) do |workshop|
  json.partial! "api/workshops/workshop", workshop: workshop
end

json.attended(user.attended) do |workshop|
  json.partial! "api/workshops/workshop", workshop: workshop
end

json.photos(user.photos) do |photo|
  json.partial! "api/photos/photo", photo: photo
end

json.reviews do
  json.array! user.reviews do |review|
    json.partial! "api/reviews/review", review: review
  end
end

json.reviews_of_self(user.reviews_of_self) do |review|
  json.partial! "api/reviews/review", review: review
end
