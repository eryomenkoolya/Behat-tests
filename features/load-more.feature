Feature: Load more
  In order to see more information on demand
  As a website user
  I should be able to load more results

  @javascript
  Scenario: Load more results on the home page
    Given I am on "/"
    And I fill in search field with "growth"
    And I wait for 3 seconds
    When I click button to load more results
    And I wait for 3 seconds
    Then I should see 32 block elements