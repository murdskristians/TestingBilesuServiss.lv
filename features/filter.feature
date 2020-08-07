@filter
Feature: filter
Selecting to filter events by clickable calendar ui

@filter test
Scenario: As a user, I can select shows using calendar shortcuts instead of date picker
Given I open bilesu serviss website
When I click on navigation window
And I chose category Kelendārs
And I chose date from as 1 of April
And I chose date to as 30 of April
And I click on Atasit
And I click on date from field for month to appear
Then Date should be April

Scenario: As a user, I can select shows using the calendar date picker
Given I open bilesu serviss website
When I click on navigation window
And I chose category Kelendārs
And I press on Today button
And I press on date from filter
And I erase the date from text
And I enter date 01.04.20
And I press on date to filter
And I erase the date to text
And I enter date 01.04.20
And I enter date 30.04.20
And I click on atlasit button
Then Date should be April

Scenario: As a user, I can filter shows by city
Given I open bilesu serviss website
When I click on navigation window
And I select category Pasakumi
And I click on button Visi pasākumi
And I clickon filter pilsetas
And I click on third option
Then Check whether the city Aizkraukle is selected

Scenario: As a user, I can filter shows by category
Given I open bilesu serviss website
When I click on navigation window
And I select category Pasakumi
And I click on button Opera
And I select Opera from submenu
Then I check if right category is selected

Scenario: As a user, I can filter shows by venue
Given I open bilesu serviss website
When I click on navigation window
And I chose category Vietas
And I press on button Cēsis
And I chose from submenu Cēsu Pils parka estrāde
Then I check if right place is selected