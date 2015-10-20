json.array!(@signups) do |signup|
  json.partial!('signup', signup: signup)
end
