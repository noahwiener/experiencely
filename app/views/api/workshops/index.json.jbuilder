json.array!(@workshops) do |workshop|
  json.partial!('workshop', workshop: workshop)
end
