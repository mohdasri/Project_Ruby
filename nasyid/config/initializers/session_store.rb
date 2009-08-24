# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nasyid_session',
  :secret      => '36a4f4d4105ba5ebffe1011591ef6918cf0a803abe490d8f411a0bd4f157910e488ed9c442ef015980c6f304812f590c60477fda913bea34648ee5c948529ac6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
