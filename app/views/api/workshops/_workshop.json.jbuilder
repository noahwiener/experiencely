json.extract!(workshop,
              :id,
              :host_id,
              :title,
              :details,
              :date,
              :start_time,
              :attendees,
              :max_attendees,
              :lat,
              :lng,
              :location,
              :price,
              :body)
  #

  if current_user
    json.isSignedUp (current_user.workshops_attended.include?(workshop))
  else
    json.isSignedUp false
  end

  json.host do
    json.partial! "api/host/host", host: workshop.host
  end

  json.reviews do
    json.array! workshop.reviews do |review|
      json.partial! "api/reviews/review", review: review
    end
  end


json.photos do
  json.array! workshop.sorted_photos do |photo|
    json.partial! "api/photos/photo", photo: photo
  end
end
