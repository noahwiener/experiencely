json.array!(Workshop.upcoming) do |workshop|
  json.partial!('workshop', workshop: workshop)
end
