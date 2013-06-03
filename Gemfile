source 'https://rubygems.org'
gem 'rails', '4.0.0.rc1'
#gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'sqlite3'

gem 'sass-rails',   '~> 4.0.0.rc1'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'


group :test do 
  gem "capybara", ">= 2.0.3"
  gem "database_cleaner", ">= 1.0.0.RC1"
  gem "email_spec", ">= 1.4.0"
end

group :development do 
  gem "guard-bundler", ">= 1.0.0"
  gem "guard-rails", ">= 0.4.0"
  gem "guard-rspec", ">= 2.5.2"
  gem "quiet_assets", ">= 1.0.2"
  gem "better_errors", ">= 0.7.2"
  gem "rb-inotify", ">= 0.9.0", :require => false
  gem "rb-fsevent", ">= 0.9.3", :require => false
  gem "rb-fchange", ">= 0.0.6", :require => false
end

group :development, :test do 
  gem "rspec-rails", ">= 2.12.2"
  gem "factory_girl_rails", ">= 4.2.0"
end

gem 'jquery-rails'
gem "unicorn", ">= 4.3.1"

gem "bootstrap-sass", ">= 2.3.0.0"
gem "simple_form", "~> 3.0.0.rc"

gem "binding_of_caller", ">= 0.7.1", :group => :development, :platforms => [:mri_19, :rbx]
gem "libv8", ">= 3.11.8"
gem "therubyracer", ">= 0.11.3", :group => :assets, :platform => :ruby, :require => "v8"
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]