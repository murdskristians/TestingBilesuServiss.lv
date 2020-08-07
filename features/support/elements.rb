class Elements
    def initialize(type, value)
        @type = type
        @value = value
    end

    def get_element(wait_time: 20)
        wait = Selenium::WebDriver::Wait.new(timeout: wait_time)
        return wait.until { $driver.find_element(@type, @value) }
    end

    def click(wait_time: 20)
        wait = Selenium::WebDriver::Wait.new(timeout: wait_time)
        return wait.until { 
            $driver.find_element(@type, @value).click
            true
        }
    end

    def set(text, wait_time: 20)
        wait = Selenium::WebDriver::Wait.new(timeout: wait_time)
        return wait.until { 
            $driver.find_element(@type, @value).send_keys(text) 
            true
        }
    end
    
    def submit(wait_time: 20)
        wait = Selenium::WebDriver::Wait.new(timeout: wait_time)
        return wait.until { 
            $driver.find_element(@type, @value).submit
            true
        }
    end
end