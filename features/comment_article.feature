Feature: Comment article

    As a user
    In order to express my thoughts
    I should be able to leave comments below an article

    Background: 
        Given  the following articles exists
        |title | content |
        |A breaking news item! | Some really breaking action! |
        And I visit the site
        And I click "Show"
    
    Scenario: User can leave a comment at article
        When I fill in "Commenter" with "Greg"
        And I fill in "Body" with "This is great!"
        And I click "Create Comment"
        Then I should see "Your comment has been posted!"
        And I should see "Commenter: Greg"
        And I should see "Comment: This is great!"

    Scenario: User can delete a comment at article
        Given I create a comment
        When I click "Delete Comment"
        Then I should see "The comment has been successfully deleted"
