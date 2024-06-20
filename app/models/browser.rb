# frozen_string_literal: true

class Browser
  USERAGENT = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'
  ARGS = [
    "--user-agent=#{USERAGENT}",
    '--no-sandbox',
    '--disable-dev-shm-usage',
    '--ignore-certificate-errors',
    '--window-size=1920,1080',
    '--headless=new'
  ].freeze

  delegate :title, :quit, to: :@driver

  def initialize
    @options = Selenium::WebDriver::Chrome::Options.new(args: ARGS)
    @driver = Selenium::WebDriver.for(:chrome, options: @options)
  end

  def navigate_to(url)
    @driver.navigate.to(url)
  end
end
