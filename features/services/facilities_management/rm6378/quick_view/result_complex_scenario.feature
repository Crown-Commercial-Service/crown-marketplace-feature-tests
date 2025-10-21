Feature: Facilities Management - RM6378 - Information appears correctly on results page in the complex scenario

  @smoulder @production
  Scenario: Flash message appears for complex scenario
    Given I sign in and navigate to the start page for the 'RM6378' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Mechanical and Electrical Engineering Maintenance                       |
      | Planned / Group re-lamping service                                      |
      | Building Information Modelling (BIM) and Government Soft Landings (GSL) |
      | Security Advisory Services                                              |
      | Risk Assessments                                                        |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley |
      | Essex       |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '123456' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in the following sub-lots:
      | 2a |
      | 4d |
    And I should see the following 'services' in the selection summary:
      | Mechanical and Electrical Engineering Maintenance                       |
      | Planned / Group re-lamping service                                      |
      | Building Information Modelling (BIM) and Government Soft Landings (GSL) |
      | Security Advisory Services                                              |
      | Risk Assessments                                                        |
    And I should see the following 'regions' in the selection summary:
      | Tees Valley |
      | Essex       |
    And I should see the following 'annual contract cost' in the selection summary:
      | £123,456 |
    Then I enter 'Hollow Nest' into the contract name field
    And I select 'Yes'
    And I click on 'Save and continue'
    Then I am on the 'What do I do next?' page
    And the procurement name is shown to be 'Hollow Nest'
    And there is a notification with the message for the saved security search for 'Hollow Nest'
