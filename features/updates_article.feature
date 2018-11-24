Feature: Update article

    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

    Background: 
        Given  the following articles exists
        | title                 | content                      |
        | A breaking news item! | Some really breaking action! |

    Scenario: User can update articles
        Given I visit the site
        When I click "Edit"
        And I fill in "Title" with "Hello there!"
        And I fill in "Content" with "I changed something here!"
        And I click "Update"
        Then I should see "Hello there!"
        And I should see "I changed something here!"