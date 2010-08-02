# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_address_book_session',
  :secret      => 'e45d0948f2234bb6f0e7323393a16d5155d731876a759fe8942bfff665810ed41718c11c1887195776841b606cd384af4b10ba87253d69949b9092b31b6083e0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
