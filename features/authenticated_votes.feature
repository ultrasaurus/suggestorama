Feature: Votes with authentication
  In order to determine which talk to give
  people need to be able to vote for the ones they like
  and since we know who they are, they can take back their vote!
  
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
    And I should see "-1"
    
  Scenario: removing a vote on a topic
    When I follow "+1"
    And I follow "-1"
    Then I should see "0 votes"
    
  Scenario: seeing whether or not I have voted
    When I follow "Rails Fixtures"
    Then I should see "You have not voted on this talk."
    
  Scenario: voting on a topic from the show page
    When I follow "Rails Fixtures"
    And I follow "I would attend a meetup on this topic"
    Then I should see "You have voted for this talk"
    And I should see "1 vote"
    And I should see "-1"
    And I should see "I'm not interested anymore"


    