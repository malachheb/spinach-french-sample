require 'pry'
require 'rspec'
require 'rspec/expectations'
require 'spinach/capybara'
require 'selenium/webdriver'
require File.expand_path('../dsl', __FILE__)
require File.expand_path('../parser', __FILE__)

Capybara.default_driver = :selenium
Capybara.app_host = "http://localhost:3000"
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.run_server = false
