require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

World(PageObjects)
World(Helper)

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambiente/#{AMBIENTE}.yml")


Capybara.configure do |config|

    #selenium #selenium_chrome #selenium_chrome_healess
    config.default_driver = :selenium_chrome
    #config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 10
    
    end