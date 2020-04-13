require 'watir'
require 'rspec'
require 'selenium-webdriver'

  chromedriver_path = 'C:\Users\220757\Desktop\WebMotorsTeste\browser/chromedriver.exe'
  raise "Cannot found ChromeDriver on #{chromedriver_path}" if !File.file?(chromedriver_path)
  Selenium::WebDriver::Chrome.driver_path = chromedriver_path

# o default do watir é o chrome, caso você queira iniciar com outro tipo de browser é so passar após o .new :firefox
browser = Watir::Browser.new :chrome
browser.driver.manage.window.maximize

Before do
    # estamos setando o referencia do browser para uma variavel global chamada @browser
    @browser = browser
    @url = ENV["URL"]
end

