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
* To install Ruby 2.3.3
```shell
$ rvm install ruby-2.3.3
```
* To install Gems
```shell
$ gem install bundle
$ bundle
```

## <a name="Usage">Usage</a>
To load Rails web server
```shell
$ bin/rails server
```
type `http://localhost:3000` into your web browser

## <a name="Rails">Rails File Structure</a>
[![RubyRails](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/RubyRails.png)](https://raw.githubusercontent.com/adrianeyre/yelp/master/images/RubyRails.png "Screen Shot 1")

## <a name="Database">Database Schema</a>

## <a name="Shots">Screen Shots</a>

## <a name="Heroku">Use live on Heroku</a>
