# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "pg"
gem 'sinatra'
gem "sinatra-contrib"
group :test do
  gem 'capybara'
  gem 'rspec'
end

group :development, :test do
  gem "rubocop", "0.79.0"
end
# gem "rails"
