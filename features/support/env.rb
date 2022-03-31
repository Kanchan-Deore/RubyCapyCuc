require 'selenium-webdriver'
require 'capybara'
require 'cucumber'
require 'capybara/cucumber'
require 'webdrivers'

# putting this at the top level will make capybara methods available everywhere
# you can put it in a module if you want to, well, modularize ...

# Set Selenium driver
Capybara.default_driver = :selenium

# defualt web
#Capybara.app_host = "http://www.google.com"

caps = Selenium::WebDriver::Remote::Capabilities.chrome(
  'goog:chromeOptions' => {  args: ['start-maximized', ]  },
)

Capybara.default_max_wait_time = 10

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new app, browser: :chrome, desired_capabilities: caps
end

