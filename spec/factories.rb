Factory.define :user do |u|
  u.name 'Han Solo'
  u.email 'han@hanshotfirst.com'
  u.password 'password'
  u.password_confirmation 'password'
end

Factory.define :driver_post do |dp|
  user = Factory.create(:user)
  dp.poster_id user.id
  dp.title "Able to drive to CWD Web Dev Day"
  dp.origin "Athens"
  dp.message "I would like to split gas."
end
