Feature: Hooks

  Background:
    Given I create a hooks Share Button

  @hooks
  Scenario: Both hoooks should activate in order
    When I click the Reddit logo
    Then I should see the classes "hook before after"
