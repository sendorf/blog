# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Load alwaysdata vars from local file
alwaysdata_env = File.join(Rails.root, 'config', 'alwaysdata_env.rb')
load(alwaysdata_env) if File.exists?(alwaysdata_env)


# Initialize the Rails application.
Rails.application.initialize!
