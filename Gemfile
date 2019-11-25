source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.3'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rack-cors'
gem 'graphql', '~> 1.9'
gem 'graphiql-rails'
gem 'devise'
gem 'httparty'
gem 'jwt'

# Graphiql rails needs these
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'

group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'pry'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
