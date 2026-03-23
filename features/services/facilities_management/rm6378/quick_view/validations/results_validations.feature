Feature: Facilities Management - RM6378 - Results validations

  Background: Sign in to the sytem
    Given I sign in and navigate to the start page for the 'RM6378' framework in 'facilities management'

  Scenario: Contract name and linkt to PFI is blank
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Mechanical and Electrical Engineering Maintenance |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Essex (TLH3) |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '123456' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Information about your requirements' page
    And I enter 'tomorrow' for the contract start date
    And I enter '27' for the estimated contract duration
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Results' page
    Given I click on 'Save and continue'
    Then I should see the following error messages:
      | Enter your contract name                         |

  @smoulder @production
  Scenario: Contract name is taken
    Given I have a search and I record the name for 'RM6378'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Mechanical and Electrical Engineering Maintenance |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Essex (TLH3) |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '123456' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Information about your requirements' page
    And I enter 'tomorrow' for the contract start date
    And I enter '27' for the estimated contract duration
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I enter the taken contract name into the contract name field
    And I click on 'Save and continue'
    Then I should see the following error messages:
      | This contract name is already in use |
