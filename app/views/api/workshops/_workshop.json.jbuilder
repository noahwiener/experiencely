json.extract!(workshop,
              :id,
              :host_id,
              :title,
              :details,
              :date,
              :start_time,
              :current_attendees,
              :max_attendees,
              :lat,
              :lng,
              :location,
              :price,
              :body)
  #
  json.host do
    json.partial! "api/host/host", host: workshop.host
  end

json.photos do
  json.array! workshop.sorted_photos do |photo|
    json.partial! "api/photos/photo", photo: photo
  end
end
