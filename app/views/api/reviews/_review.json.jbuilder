json.extract!(review,
              :user_id,
              :workshop_id,
              :title,
              :body,
              :rating)

json.userinfo do
  json.user_first_name review.user.first_name
  json.user_last_name review.user.last_name
  json.user_pic_url review.user.photos.first.url
end

json.workshop do
  json.title review.workshop.title

  json.workshop_host do
    json.first_name review.workshop.host.first_name
    json.last_init (review.workshop.host.last_name[0] + ".")
    json.host_photo (review.workshop.host.photos[0].url)
  end
end
