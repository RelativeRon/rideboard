# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rideboard_session',
  :secret      => '2e136bf3541539650b3ff24af8c85eccfa0cea0d9edb950f60b9fc7eec7f4644f75803c3e14fd49b95e5e350bd79eef7562dadc17b3cb1f9f4225089af62809f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
