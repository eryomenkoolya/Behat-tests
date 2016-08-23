Feature: Search
  In order to find needed information (articles, publications, projects, experts) quickly
  As a website user
  I should be able to perform a search

  Background:
    Given I am on "/"

  Scenario Outline: Main search on the home page
    When I fill in search field with "<search_query>"
    And I wait for 3 seconds
    Then I should see "<result>"
    And I click button to load more results

    Examples:
      | search_query          | result                           |
      | Aid in a crisis world | Aid in the Climate Change Combat |
      | NoSearchResults       | Your search yielded no results   |