# 1.Scenario: As a user, I can select shows using calendar shortcuts instead of date picker
Given (/^I open bilesu serviss website/) do
    $driver.navigate.to"https://www.bilesuparadize.lv/lv"  
end

When (/^I click on navigation window/) do
    Elements.new(:xpath, '//li[@class="dropdown"]//a[@class="topMenuItem topMenuItemCalendar"]').click
end

And (/^I chose category Kelendārs/) do
    Elements.new(:xpath, '//*[@id="navbar-collapse-1"]//a[text()="Kalendārs"]').click 
end

And (/^I chose date from as 1 of April/) do 
    Elements.new(:xpath, '//div[@class="month-from topMenuMonthFrom hasDatepicker"]//td[@data-month=3]//a[normalize-space()="1"]').click 
end

And (/^I chose date to as 30 of April/) do 
    Elements.new(:xpath, '//div[@class="month-to topMenuMonthTill hasDatepicker"]//td[@data-month=3]//a[normalize-space()="30"]').click
end

And (/^I click on Atasit/) do
    Elements.new(:xpath, "//*[@id='navbar-collapse-1']//button[normalize-space()='Atlasīt']").click
end

And (/^I click on date from field for month to appear/) do
    Elements.new(:xpath, '//div[@class="input-group"]/input[@placeholder="Datums no"][@class="form-control month-from filterObjectDateFrom hasDatepicker"]').click
end

Then (/^Date should be April/) do
    price = Elements.new(:xpath, "//*[@id='ui-datepicker-div']/div/div/span[1]").get_element.text

    raise "A test failed because month strings 'Aprīlis' did not match." unless price == "Aprīlis"
end


# 2.Scenario: As a user, I can select shows using the calendar date picker
And  (/^I press on Today button/) do
    Elements.new(:xpath, '//*[@id="navbar-collapse-1"]//a[normalize-space()="Šodien"]').click
end

And  (/^I press on date from filter/) do
    Elements.new(:xpath, '//div[@class="input-group"]/input[@placeholder="Datums no"]').click
end

And  (/^I erase the date from text/) do
    Elements.new(:xpath, '//div[@class="input-group"]/input[@placeholder="Datums no"]').get_element.clear()
end

And  (/^I enter date 01.04.20/) do
    Elements.new(:xpath, '//div[@class="input-group"]/input[@placeholder="Datums no"]').set("01.04.20")
end

And  (/^I press on date to filter/) do
    Elements.new(:xpath, '//div[@class="input-group"]/input[@placeholder="Datums līdz"]').click
end

And  (/^I erase the date to text/) do
    Elements.new(:xpath, '//div[@class="input-group"]/input[@placeholder="Datums līdz"]').get_element.clear()
end

And  (/^I enter date 30.04.20/) do
    Elements.new(:xpath, '//div[@class="input-group"]/input[@placeholder="Datums līdz"]').set("30.04.20")
end

And  (/^I click on atlasit button/) do
    Elements.new(:xpath, "//div/div[8]//button[normalize-space()='Atlasīt']").click
end


# 3.Scenario: As a user, I can filter shows by city
And (/^I select category Pasakumi/) do
    Elements.new(:xpath, '//*[@id="navbar-collapse-1"]//a[text()="Pasākumi"]').click
end

And  (/^I click on button Visi pasākumi/) do
    Elements.new(:xpath, '//*[@id="navbar-collapse-1"]//a[text()="Visi pasākumi"]').click
end

And  (/^I clickon filter pilsetas/) do
    Elements.new(:xpath, "//div[@class='container']//select[@class='filterObjectCity']").click
end

And  (/^I click on third option/) do
    Elements.new(:xpath, "//select[@class='filterObjectCity']/option[3]").click
end

Then  (/^Check whether the city Aizkraukle is selected/) do
    city = Elements.new(:xpath, "//select[@class='filterObjectCity']/option[@value='Aizkraukle']").get_element.text

    raise "A test failed because city strings 'Aizkraukle' did not match." unless city == "Aizkraukle"
end


# 4.Scenario: As a user, I can filter shows by category
And  (/^I click on button Opera/) do
    Elements.new(:xpath, '//*[@id="navbar-collapse-1"]//a[normalize-space()="Opera"]').click
end

And  (/^I select Opera from submenu/) do
    Elements.new(:xpath,'//*[@id="navbar-collapse-1"]//ul[2]/li[1]/a[text()="Opera"]').click
end

Then  (/^I check if right category is selected/) do
    category = Elements.new(:xpath, "//option[@value=1]").get_element.text

    raise "A test failed because category strings 'Opera' did not match." unless category == "Opera"
end


# 5.Scenario: As a user, I can filter shows by venue
And (/^I chose category Vietas/) do
    Elements.new(:xpath, '//*[@id="navbar-collapse-1"]//a[normalize-space()="Vietas"]').click
end

And (/^I press on button Cēsis/) do
    Elements.new(:xpath, '//*[@id="navbar-collapse-1"]//a[normalize-space()="Cēsis"]').click
end

And (/^I chose from submenu Cēsu Pils parka estrāde/) do
    Elements.new(:xpath, '//*[@id="navbar-collapse-1"]//a[text()="Cēsu Pils parka estrāde"]').click
end

Then (/^I check if right place is selected/) do
    place = Elements.new(:xpath, "//ol[@class='breadcrumb']/li[3]/a").get_element.text

    raise "A test failed because place strings 'Cēsu Pils parka estrāde' did not match." unless place == "Cēsu Pils parka estrāde"
end
