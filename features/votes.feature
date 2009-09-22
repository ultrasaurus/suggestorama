Feature: Votes
  In order to determine which talk to give
  people need to be able to vote for the ones they like
  
  Background: Make sure that we have a topic
    Given I go to topics
    And I follow "New topic"
    When I fill in "Title" with "Rails Fixtures"
    And I fill in "Description" with "Introduce how to add test data with fixtures."
    And I press "Create"
    
  Scenario: viewing votes already cast
    When I go to topics
    Then I should see "0 votes"
    
  Scenario: voting on a topic
    When I follow "+1"
    Then I should see "1 vote"