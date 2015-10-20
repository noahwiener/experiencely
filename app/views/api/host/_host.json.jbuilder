json.extract!(host,
              :id,
              :user_name,
              :first_name,
              :last_name,
              :about_me,
              :avg_reviews)

json.photos(host.photos) do |photo|
  json.partial! "api/photos/photo", photo: photo
end

json.reviews_of_self(host.reviews_of_self) do |review|
  json.partial! "api/reviews/review", review: review
end
