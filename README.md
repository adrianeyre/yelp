# Yelp
#### Technologies: Ruby, Rspec, Rails, Heroku, HTML, CSS, Postgres, SQL
### [Makers Academy] (http://www.makersacademy.com) - Week 8 Pair Programming Project

## Index
* [Gems Used] (#GEMS)
* [Installtion] (#Install)
* [Usage] (#Usage)
* [Rails File Structure] (#Rails)
* [Database Schema] (#Database)
* [Screen Shots] (#Shots)
* [Use live on Heroku] (#Heroku)

## <a name="GEMS">Gems Used</a>
```ruby
gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'shoulda'
gem 'omniauth-facebook'

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'rspec-collection_matchers'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'shoulda'
end

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
```

## <a name="Install">Installation</a>
Yelp is ran on Ruby version : 2.3.3

* To clone and change Ruby versions
```shell
$ git clone https://github.com/adrianeyre/yelp
$ cd yelp
$ rvm 2.3.3
```
* Checkout branch
```
$ git checkout branch_name
```
where `branch_name` is `V1-day-one`, `V2-day-two`, `V2-day-three`, `V3-day-four` or `V3-day-five`
* To install Ruby 2.3.3
```shell
$ rvm install ruby-2.3.3
```
* To install Gems
```shell
$ gem install bundle
$ bundle
```
* Update your Facebook Security Key and AWS details
Creata a file called `.env` in the root and fille in the below details
```
FACEBOOK_APP_SECRET=
S3_BUCKET_NAME=
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=t
AWS_REGION=
```

## <a name="Usage">Usage</a>
To load Rails web server
```shell
$ bin/rails server
```
type `http://localhost:3000` into your web browser

## <a name="Rails">Rails File Structure</a>
[![RubyRails](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/RubyRails.png)](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/RubyRails.png "Ruby on Rails File Structure")

## <a name="Database">Database Schema</a>

## <a name="Shots">Screen Shots</a>
### Main Restaurant
[![Screenshot](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/screenshot1.png)](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/screenshot1.png "Screen Shot 1")

### Restaurant Profile Page
[![Screenshot](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/screenshot2.png)](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/screenshot2.png "Screen Shot 2")

### Create New Restaurant
[![Screenshot](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/screenshot3.png)](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/screenshot3.png "Screen Shot 3")

### User Sign Up
[![Screenshot](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/screenshot4.png)](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/screenshot4.png "Screen Shot 4")

## <a name="Heroku">Use live on Heroku</a>
