Factory.define :post do |post|
  post.association :poster, :factory => :poster
  post.title "You're all clear kid!"
  post.origin "Yavin 4"
  post.message "Now let's blow this thing and go home!"
end

Factory.define :driver_post do |post|
  post.association :poster, :factory => :driver
  post.title "Able to drive to CWD Web Dev Day"
  post.origin "Athens"
  post.message "I would like to split gas."
end

