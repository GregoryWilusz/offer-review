source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'dotenv-rails'
gem 'pg'
gem 'puma'
gem 'rails'
gem 'sass-rails'
gem 'turbolinks'
gem 'webpacker'
gem 'rails_param'

group :test do
  gem 'rspec-rails', require: false
  gem 'factory_bot_rails'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen'
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end
