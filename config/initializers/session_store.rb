# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_suggestotron_session',
  :secret      => '7239fcf2002daacffbb25bb4a34ed57de77d7dae0ce1ee994fda23fc1ae9fb9a12494762ad4a57b642f79c3b02404ec2b1e7fa7e28af86a36cb43cfa3c0a1b9b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
