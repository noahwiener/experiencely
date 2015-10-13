json.array!(@workshops) do |workshop|
  json.extract!(workshop,
                :host_id,
                :title,
                :details,
                :date,
                :start_time,
                :current_attendees,
                :max_attendees,
                :lat,
                :lng,
                :location)
end
