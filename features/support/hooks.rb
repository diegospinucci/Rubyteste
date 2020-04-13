require 'watir'
require 'selenium-webdriver'

Before do 
  #...code
end

After do 

	@browser.cookies.clear
end