Feature: Delete article

    As a publisher
    In order to manage my website
    I should be able to delete my articles

    Background: 
        Given  the following articles exists
        | title                 | content                      |
        | A breaking news item! | Some really breaking action! |
    
    Scenario: User can delete article
        Given I visit the site
        And I click "Delete"
        Then I should see "The article was successfully deleted"