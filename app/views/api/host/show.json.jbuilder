json.partial!("host", host: @user)
json.workshops_hosted do |workshop_hosted|
  json.partial! "api/workshops/workshop", photo: photo
end
