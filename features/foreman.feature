Feature: CRUD Foreman
  In order to be able to select the weekly foreman
  As an Admin
  I should be able to crud apprentices

  Scenario: Create an apprentice
    Given that I dont have any apprentices
    When I add an apprentice with name: "Sylwia" and last name: "Olak"
    Then I should have 1 apprentice
    And its name should be "Sylwia" and last name: "Olak"

  Scenario: List all apprentices