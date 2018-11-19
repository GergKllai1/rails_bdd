Feature: List articles on the index page

   "As a visitor,
   When I visit the index page of the application
   I would like to see a list of all the articles"

   Scenario: View list of articles on the index page
    When I visit the site
    Then I should see "A breaking news item!"
    And I should see "Some really breaking action!"