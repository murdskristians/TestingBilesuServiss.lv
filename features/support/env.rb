require "selenium-webdriver" 
#Ja webdriveri nav ieinstalēti globāli, tad nepieciešams atkomentēt nākamo koda rindu.
#require "webdrivers" 

Before do
    $driver = Selenium::WebDriver.for :chrome
end

After do
    $driver.quit
end