source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production do

  gem 'pg'

end

group :development, :test do

  gem 'sqlite3'

end

gem 'rails_admin'
gem 'devise', '2.0.4'
gem 'bcrypt-ruby', :require => 'bcrypt'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development, :test do 
	gem 'cucumber-rails', '1.2.1', :require => false
	gem 'rspec-rails', '2.10.1'
	gem 'database_cleaner', '0.8.0'
	gem 'factory_girl_rails', :require => false
	gem 'selenium-webdriver', '~> 2.24.0'
	gem 'selenium-rc', '~> 2.20.0'
	gem 'rake', '10.0.3'
	gem 'i18n', '0.6.1'
	gem 'activesupport', '3.2.6'
end