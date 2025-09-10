@accessibility
Feature: Management Consultancy - Admin - Accessibility

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    Then I am on the 'Admin dashboard' page

  Scenario: Dashboard page
    Then the page should pass the accessibility checks

  Scenario: New upload page
    And I click on 'Create a new data upload'
    Then I am on the 'New data upload' page
    Then the page should pass the accessibility checks

  Scenario Outline: Show page - <status>
    And I click on the first upload session with status '<status>'
    Then I am on the 'Upload session' page
    Then the page should pass the accessibility checks

    Examples:
      | status            |
      | Failed            |
      | Published on live |
