source 'https://rubygems.org'

gem 'pakyow', '~> 0.11.3'

# app server
gem 'puma', platforms: :ruby
gem 'thin', platforms: :mswin

# use dotenv to load environment variables
gem 'dotenv', groups: [:development, :test]
gem 'dotenv-deployment', groups: [:production]

group :test do
  gem 'rspec'
end

gem 'pakyow-slim'
gem 'pakyow-assets', github: 'pakyow/assets'
gem 'mysql2'
gem 'sequel'
