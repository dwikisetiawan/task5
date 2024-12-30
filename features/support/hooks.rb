Before do |scenario|
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.maximize
end

After do |scenario|
  @driver.quit
end