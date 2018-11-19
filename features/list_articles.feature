Feature: List articles on the index page

   "As a visitor,
   When I visit the index page of the application
   I would like to see a list of all the articles"

   Scenario: View list of articles on the index page
   Given  the following articles exists
   |title | content |
   |A breaking news item! | Some really breaking action! |
   |Learn Rails 5 | Build megaawesome rails applications!!|

   When I visit the site
   Then I should see "A breaking news item!"
   And I should see "Some really breaking action!"
   And I should see "Learn Rails 5"
   And I should see "Build megaawesome rails applications!!"
   