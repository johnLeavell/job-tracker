# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

creating a new reails server with, Cors, ActiveModel::Serializer, & Postgres.  Namespancing and versioning 

rails new job-tracker-bakcend --api --database=postgresql

Let's create our app with rails new backend_project_name --api --database=postgresql

We're going to need a few gems in our Gemfile so let's go ahead and add them: bundle add jwt && bundle add active_model_serializers && bundle add faker––if you get a gem not found error, try running gem install on each of these, or manually add them to your Gemfile.

Don't forget to uncomment rack-cors and bcrypt from your Gemfile.

Call bundle install.

Don't forget to enable CORS in your app. Uncomment the following in config/initializers/cors.rb. Don't forget to change the origins from example.com to *

rails g model User username password_digest bio avatar
rails g controller api/v1/users
rails g serializer user (if you want to use a serializer)
rails db:create
rails db:migrate

class User < ApplicationRecord
  has_secure_password
end

class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end 
