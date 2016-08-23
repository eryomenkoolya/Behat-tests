Feature: Search
  In order to find products dinosaurs love
  As a website user
  I need to be able to search for products

  Background:
    Given I am on "/"

  Scenario Outline: Search for a product
    When I fill in "query" with "<term>"
    And I wait for 3 seconds
    Then I should see "<result>"
    And I click button to load more results
    And I wait for 3 seconds
    Examples:
      | term                  | result                           |
      | Aid in a crisis world | Aid in the Climate Change Combat |
      | nosearchresults       | Your search yielded no results   |