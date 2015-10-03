ruby '2.2.2'

source 'https://rails-assets.org' do
  # Use to load in bower.io JS/CSS bits.
  gem 'rails-assets-normalize-css', '~> 3.0'
end

source 'https://rubygems.org' do
  # Rails
  gem 'rails', '~> 4.2'

  # App Server & caching layers
  gem 'unicorn', '~> 4.9', require: false
  gem 'dalli'

  # Database - to be removed.
  gem 'pg', '~> 0.18'

  # APIs for returning how many events are on that day.
  gem 'geocoder'
  gem 'meetup_client'
  
  # JSON Response
  gem 'jbuilder', '~> 2.3'

  # CSS / SCSS
  gem 'autoprefixer-rails'
  gem 'sass-rails', '~> 5.0'

  # JS
  gem 'uglifier', '>= 1.3.0'
  #gem 'therubyracer', platforms: :ruby
  #gem 'jquery-rails'
  gem 'turbolinks', '~> 2.5'
  
  group :development, :test do
    # Call 'byebug' anywhere in the code to stop execution and get a debugger console
    #gem 'byebug'
    #gem 'quiet_assets'
  end

  group :development do
    # Access an IRB console on exception pages or by using <%= console %> in views
    #gem 'web-console', '~> 2.0'

    # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
    gem 'spring', '~> 1.4', require: false
    gem 'foreman', require: false
  end

  group :production, :staging do
    # Heroku middleware
    gem 'heroku-deflater', '~> 0.5'
    gem 'rails_12factor', '~> 0.0.3'
  end
end
