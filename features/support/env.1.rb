require 'capybara'
require 'capybara/cucumber'

Capybara.register_driver :Selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|

    config.default_max_wait_time = 30 #segundos
    config.default_driver = :Selenium
    config.javascript_driver = :chrome
end