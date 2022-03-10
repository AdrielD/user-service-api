# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.2', '>= 7.0.2.3'
# gem "rack-cors"

group :development do
  gem 'bundle-audit'
  gem 'overcommit'
  gem 'rubocop', '~> 1.26', require: false
  gem 'rubocop-rails', require: false
end

group :development, :test do
  gem 'pry'
  gem 'rspec-rails', '~> 5.0.0'
end
