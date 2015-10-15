json.array!(@workshops) do |workshop|
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
                :price)
  json.photos do
    json.array! workshop.host.photos do |photo|
      json.partial! "api/photos/photo", photo: photo
    end
  end
end
