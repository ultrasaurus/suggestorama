Feature: Topics List and Details
  In order to learn about topics,
  People need to be able to see them in a list
  and see details about them

  Background: Make sure we have a topic in the list
    Given I go to topics
    And I follow "New topic"
    When I fill in "Title" with "Rails Fixtures"
    And I fill in "Description" with "Introduce how to add test data with fixtures."
    And I press "Create"

  Scenario: Clicking on the topic title
    When I follow "Rails Fixtures"
    Then I should see "Introduce how to add test data with fixtures."
    And I should not see "add a topic"

  Scenario: Deleting a topic
    When I follow "Delete"
    Then I should not see "Rails Fixtures"
    And I should see "New topic"

