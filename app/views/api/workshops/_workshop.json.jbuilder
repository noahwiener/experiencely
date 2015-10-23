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
              :body,
              :eng_date)
  #

  if current_user
    json.isSignedUp (current_user.workshops_attended.include?(workshop))
    json.reviewed current_user.reviewed?(workshop)
    json.current_user_review current_user.review(workshop)
  else
    json.isSignedUp false
  end

json.photos do
  json.array! workshop.sorted_photos do |photo|
    json.partial! "api/photos/photo", photo: photo
  end
end

json.host do
  json.partial! "api/host/host", host: workshop.host
end
