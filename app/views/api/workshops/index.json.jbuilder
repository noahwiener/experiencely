json.array!(Workshop.upcoming) do |workshop|
  json.partial!('workshop', workshop: workshop)

  json.reviews do
    json.array! workshop.reviews do |review|
      json.partial! "api/reviews/review", review: review
    end
  end


end
