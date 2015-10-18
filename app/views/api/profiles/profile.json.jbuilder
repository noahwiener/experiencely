json.extract!(user,
              :id,
              :user_name,
              :first_name,
              :last_name,
              :about_me)

json.photos(user.photos) do |photo|
  json.partial! "api/photos/photo", photo: photo
end
