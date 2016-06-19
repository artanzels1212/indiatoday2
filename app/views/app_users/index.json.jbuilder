json.array!(@app_users) do |app_user|
  json.extract! app_user, :id, :user_name, :email, :mobile_no
  json.url app_user_url(app_user, format: :json)
end
