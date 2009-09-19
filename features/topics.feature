Feature: Topics
  In order to see a list of potential topics for meetings
  people need to be able to create and edit them

  Scenario: Getting to the new topic page
    When I go to topics
    And I follow "New topic"
    Then I should see a "Create" button

