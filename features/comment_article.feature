Feature: Comment article

    As a user
    In order to express my thoughts
    I should be able to leave comments below an article

    Background: 
        Given  the following articles exists
        |title | content |
        |A breaking news item! | Some really breaking action! |
    
    Scenario: User can leave a comment at article
        Given I visit the site
        And I click "Show"
        And I fill in "Commenter" with "Greg"
        And I fill in "Body" with "This is great!"
        And I click "Create Comment"
        Then I should see "Comment successfully added!"