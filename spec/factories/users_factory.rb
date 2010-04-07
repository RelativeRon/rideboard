Factory.define :poster, :class => 'User' do |u|
  u.name 'Han Solo'
  u.email "han.#{rand(1_000_000)}@hanshotfirst.com"
  u.password 'password'
  u.password_confirmation 'password'
end

Factory.define :driver, :class => 'User' do |u|
  u.name 'Drivey McDriver'
  u.email "drivey.#{rand(1_000_000)}@fastcar.com"
  u.password 'password'
  u.password_confirmation 'password'
end
