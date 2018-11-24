Feature: Create article

    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background: 
        Given I visit the site
        When I click "New Article" link

    Scenario: Create an article successfully
        When I fill in "Title" with "Learning Rails 5"
        And I fill in "Content" with "Excited about learning a new framework"
        And I click "Save Article" button
        Then I should be on "Learning Rails 5" page
        And I should see "Article was successfully created."
        And I should see "Learning Rails 5"
        And I should see "Excited about learning a new framework"