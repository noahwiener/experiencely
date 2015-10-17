json.extract!(host,
              :id,
              :user_name,
              :first_name,
              :last_name,
              :about_me)

json.photos(host.photos) do |photo|
  json.partial! "api/photos/photo", photo: photo
end

# 
# json.photos do
#   json.array! host.photos do |photo|
#     json.partial! "api/photos/photo", photo: photo
#   end
# end
