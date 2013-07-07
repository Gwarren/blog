source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '3.2.13'

# This version of jquery-rails contains jquery-ui. Greater versions have
# removed that. activeadmin needs jquery-ui
gem 'jquery-rails', '2.3.0'

gem 'haml-rails'
gem 'activeadmin', '0.6.0'
gem 'redcarpet'
gem "html_truncator", '~>0.2'
gem 'rails-i18n'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '2.8.1'
end

group :development do
  gem 'annotate'
  gem 'better_errors'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'factory_girl_rails', '>= 1.4.0'
  gem 'coco', '>= 0.7.1'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end


