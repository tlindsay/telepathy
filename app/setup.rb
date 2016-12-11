require 'bundler/setup'
require 'pakyow'

Pakyow::App.define do
  configure do
    Bundler.require :default, Pakyow::Config.env

    if defined?(Dotenv)
      env_path = ".env.#{Pakyow::Config.env}"
      Dotenv.load env_path if File.exist?(env_path)
      Dotenv.load
    end

    db_options = {
      adapter: ENV['DB_ADAPTER'],
      database: ENV['DB_DATABASE'],
      host: ENV['DB_HOST'],
      port: ENV['DB_PORT'],
      user: ENV['DB_USER'],
      password: ENV['DB_PASSWORD']
    }

    $db = Sequel.connect(db_options)
    app.name = 'telepathy'
  end

  configure :development do
    # development config goes here
  end

  configure :production do
    # production config goes here
  end
end
