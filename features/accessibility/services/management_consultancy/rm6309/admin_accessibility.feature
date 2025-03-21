@accessibility
Feature: Management Consultancy - Admin - Accessibility

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    Then I am on the 'Manage supplier data' page
  
  Scenario: Dashboard page
    Then the page should be axe clean

  Scenario: New upload page
    And I click on 'Create a new data upload'
    Then I am on the 'New data upload' page
    Then the page should be axe clean

  Scenario Outline: Show page
    And I click on the first upload session with status '<status>'
    Then I am on the 'Upload session' page
    Then the page should be axe clean

    Examples:
      | status            |
      | Failed            |
      | Published on live |
