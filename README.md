# Yelp
#### Technologies: Ruby, Rspec, Rails
### [Makers Academy] (http://www.makersacademy.com) - Week 8 Pair Programming Project

## Index
* [Gems Used] (#GEMS)
* [Installtion] (#Install)
* [User Stories] (#US)
* [Usage] (#Usage)
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
