# frozen_string_literal: true

class Demo
  URL = 'https://www.google.com'

  def initialize
    @browser = Browser.new
  end

  def run!
    puts "Loading page"
    @browser.navigate_to(URL)
    sleep 1
    puts "Page Title: #{@browser.title}"
  ensure
    @browser.quit
  end
end
