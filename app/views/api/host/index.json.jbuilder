json.array!(@users) do |user|
  json.partial!('user', user: user)
end

json.reviews_of_self(host.reviews_of_self) do |review|
  json.partial! "api/reviews/review", review: review
end
