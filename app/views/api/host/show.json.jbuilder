json.partial!("host", host: @user)

json.workshops_hosted do |workshop_hosted|
  json.partial! "api/workshops/workshop", photo: photo
end


json.reviews_of_self(host.reviews_of_self) do |review|
  json.partial! "api/reviews/review", review: review
end
