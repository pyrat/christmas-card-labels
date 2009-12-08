# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_christmas_session',
  :secret      => '7d3ea74ff4fb96699d59708e2962b06ae6b8c33e3c1dea8cc5c140d0250086c1cc200e6c021c219676f771d100e0f2b49aa1a45616e00615ea2229cce989397d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
