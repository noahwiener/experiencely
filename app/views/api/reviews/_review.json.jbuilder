json.extract!(review,
              :user_id,
              :workshop_id,
              :title,
              :body,
              :rating,
              :userinfo)


json.workshop do
  json.partial! "api/workshops/workshop", workshop: review.workshop
end
