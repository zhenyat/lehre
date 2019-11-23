################################################################################
# Generic Gemfile
# Updated according to:
#   - Michael Hartl 3-rd Edition (Listing 11.67)
#   - BKC standards (?)
#   - Heroku
#
#   NB! dont remove *coffee-rails* - *turbolinks* depends on it
#   28.06.2015  ZT
#   04.07.2015  pg_search
#   11.07.2015  acts-as-taggable-on
#   18.07.2015  no gems version selected
#               simple_form with bootstrap
#   17.09.2015	Ruby & RoR last versions
#   22.09.2015  gem *guard* added
#   24.11.2015  rails 4.2.5
#   14.01.2016  ruby 2.3.0
#   19.01.2016  Rails 5.0.0 Beta
#   20.01.2016  Turbolinks is OFF (waiting for TL 5)
#   03.02.2016  Rails 5.0.0.beta2
#   28.06.2016  Rails 5.0.0.rc2
#   07.07.2016  Ruby 2.3.1 & Rails 5.0.0
#               The file revision following the 5.0.0. version
#   10.10.2016  RoR 5.0.0.1
#   09.01.2017  Rails 5.0.1 / Ruby 2.4.0
#               (with json not OK for Ruby 2.4.0: line 'gem *sdoc*' is commented out for a while)
#   18.01.2017  Gems versions updated
#   07.02.2017  gem 'seed_dump' added
#   13.02.2017  gem 'react-rails' added
#   27.04.2017  Rails 5.0.2
#   22.05.2017  Ruby 2.4.1 / RoR 5.0.3
#   28.06.2017  gem 'lightbox2-rails'
#   12.07.2017  git_source
#   27.07.2017  RoR 5.1.2; gem 'tzinfo-data' disabled 
#   28.07.2017  bootstrap 4 as alternative
#   30.07.2017  gem 'rest-client' (to handle API)
#   16.08.2017  Rails 5.1.3
#   09.09.2017  Rails 5.1.4;  Bootstrap 4.0.0.beta
#   18.09.2017  Ruby 2.4.2
#   20.09.2017  Chartkick - Google Candlesticks chart is NOT SUPPORTED!
#   28.09.2017  gon
#   23.10.2017  Fusuion Charts
#   26.10.2017  disable gem 'rails_12factor' - not needed anymore
#               # See:  https://devcenter.heroku.com/articles/getting-started-with-rails5#local-workstation-setu
#   09.01.2018  Ruby 2.5.0, bootstrap 4.0.0.beta3
#   27.03.2018  Rails 5.2.0.rc2, bootstrap 4.0, 'webpacker', bootsnap, crono
#               and some gems added / versions updated
#               jquery-rails excluded - NOT NOW! required by bootstrap (DDL)
#   26.03.2019  Ruby 2.6.2 / Rails 6.0.0.beta3
#               Gems versions updated
#               Not used: coffee-rails, jquery-rails
#   01.04.2019  Switch: react_on_rails' |  'react-rails'
#   07.04.2019  Gem Foreman added
#   23.07.2019  Ruby 2.6.3 / Rails 6.0.0.rc2
#   18.09.2019  Ruby 2.6.4 / Rails 6.0.0
#               Gems versions are revised
#   08.11.2019  Ruby 2.6.5 / Rails 6.0.1
################################################################################
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'rails', '6.0.1'                        # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'sqlite3', '~> 1.4'                         # Use sqlite3    as the database for Active Record
gem 'seed_dump'                                 # https://github.com/rroblak/seed_dump

gem 'puma'#, '~> 3.11'  - using ~> 4            # Use Puma as the app server (NOT 4

gem 'sass-rails', '>= 6'

gem 'uglifier'                                  # Use Uglifier as compressor for JavaScript assets

#gem 'webpacker'                                 # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
#gem 'react-rails'                               # https://rubygems.org/gems/react-rails/versions/1.7.1

#gem 'therubyracer', platforms: :ruby           # Call JavaScript code and manipulate JavaScript objects from Ruby.
                                                # Call Ruby code and manipulate Ruby objects from JavaScript.
                                                # https://github.com/rails/execjs
gem 'mini_racer', platforms: :ruby              # See https://github.com/rails/execjs#readme for more supported runtimes

#gem 'coffee-rails', '~> 4.2'      stop         # Use CoffeeScript for .coffee assets and views
#gem 'jquery-rails'                stop         # Use jquery as the JavaScript library
gem 'turbolinks'                                # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder'                                  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder

#gem 'redis'                                    # Use Redis adapter to run Action Cable in production

#gem 'sdoc', group: :doc                        # bundle exec rake doc:rails generates the API under doc/api.
gem 'bcrypt'                                    # Use ActiveModel has_secure_password

gem 'haml-rails'                                # https://github.com/indirect/haml-rails

#gem 'zt_btce', :github => 'zhenyat/zt_btce', :branch => 'master'

# crono for jobs
gem 'crono'
gem 'daemons'
gem 'sinatra', require: nil                     # to run web-console for crono

#gem 'whenever', :require => false
#gem "simple_scheduler"

# Charts
#gem 'gon'
#gem 'fusioncharts-rails'
#gem 'chartkick'                                # NOT USED (just for reference)
#
#gem 'rest-client'                              # https://github.com/rest-client/rest-client
#gem 'devise'                                   # https://github.com/plataformatec/devise

#gem 'pundit'                                    # https://github.com/elabs/pundit
#gem 'ckeditor'                                  # https://github.com/galetahub/ckeditor
#gem 'carrierwave'                               # https://github.com/carrierwaveuploader/carrierwave
gem 'mini_magick'                               # Use ActiveStorage variant https://github.com/minimagick/minimagick
# gem 'image_processing', '~> 1.2'              # Use Active Storage variant

#gem "acts_as_list"                             # https://github.com/swanandp/acts_as_list
#gem 'acts-as-taggable-on'                      # https://github.com/mbleigh/acts-as-taggable-on

gem 'bootsnap', '>= 1.4.2', require: false      # Reduces boot times through caching; required in config/boot.rb

# MH 3-rd Edition
#gem 'faker'
#gem 'fog'

gem 'bootstrap'                                 # https://github.com/twbs/bootstrap-rubygem
gem 'font-awesome-rails'

gem 'lightbox2-rails'                           # https://github.com/gavinkflam/lightbox2-rails
gem 'simple_form'                               # https://github.com/plataformatec/simple_form
gem 'enum_help'

gem 'ransack'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] # Byebug is a Ruby 2 debugger. Call 'byebug' anywhere in the code to stop execution and get a debugger console
                                                      # https://github.com/deivid-rodriguez/byebug
end

group :development do
#  gem 'foreman'
  gem 'web-console'#, '>= 3.3.0'           # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'listen', '>= 3.0.5', '< 3.2'       # https://github.com/guard/listen
  gem 'spring'                            # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0' # Makes spring watch files using the listen gem.
end

group :test do
  #gem 'capybara', '>= 2.15'              # Adds support for Capybara system testing and selenium driver
  #gem 'selenium-webdriver'
  gem 'minitest-reporters'
  gem 'mini_backtrace'
  gem 'guard'
  gem 'guard-minitest'
  
  gem 'webdrivers'                  # replaced chromedriver-helper after 2019-03-31
# gem 'chromedriver-helper'         # Easy installation and use of chromedriver to run system tests with Chrome
end

# Heroku
#group :production do
#  gem 'rails_12factor'
#end

# gem 'unicorn'                                 # Use Unicorn as the app server
# gem 'capistrano-rails', group: :development   # Use Capistrano for deployment

#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]   # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
