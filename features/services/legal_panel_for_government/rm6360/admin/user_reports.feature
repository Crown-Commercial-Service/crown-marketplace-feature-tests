@skip-production
Feature: Legal Panel for Government - Admin - User reports

  @file-download
  Scenario: I can generate and download a report
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Admin dashboard' page
    And I click on 'User reports'
    Then I am on the 'User reports' page
    And I click on 'Generate a new report'
    Then I am on the 'Generate report' page
    And I enter 'yesterday' as the 'From' date
    And I enter 'today' as the 'To' date
    And I click on 'Generate report'
    Then I am on the 'Report' page
    And I wait no longer than 30 seconds for the report to generate
    And the status of the report is 'Report generated'
    When I download the 'legal_panel_for_government_rm6360' report file
    Then the file 'legal_panel_for_government_rm6360' is downloaded with the 'csv' extension
