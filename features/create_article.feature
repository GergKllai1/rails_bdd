Feature: Create article

    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background: 
        Given I visit the site
        When I click "New Article"

    Scenario: Create an article successfully
        When I fill in "Title" with "Learning Rails 5"
        And I fill in "Content" with "Excited about learning a new framework"
        And I click "Save Article"
        Then I should see "Article was successfully created."
        And I should see "Learning Rails 5"
        And I should see "Excited about learning a new framework"
    
    Scenario: Publisher doesn't enter a title for the article
        When I fill in "Content" with "Excited about learning a new framework"
        And I click "Save Article"
        Then I should see "Title can't be blank"

    Scenario: Publisher doesn't enter content for the article
        When I fill in "Title" with "Learning Rails 5"
        And I click "Save Article"
        Then I should see "Content can't be blank"