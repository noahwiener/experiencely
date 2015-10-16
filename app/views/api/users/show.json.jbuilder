json.extract!(@user,
              :id,
              :host_id,
              :host,
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
json.photos do
  json.array! @workshop.photos do |photo|
    json.partial! "api/photos/photo", photo: photo
  end

  json.array! @workshop.host.photos do |photo|
    json.partial! "api/photos/photo", photo: photo
  end
end
