Feature: Management Consultancy - Jounrey validations

  Background: Navigate to start page
    Given I sign in and navigate to the start page for the 'RM6309' framework in 'management consultancy'

  @smoulder
  Scenario: Select the lot you need validation
    When I click on 'Continue'
    Then I should see the following error messages:
      | Select the lot you need |

  Scenario Outline: Select the services you need validation
    Given I select '<lot>'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    When I click on 'Continue'
    Then I should see the following error messages:
      | Select the service or services you need |

    Examples:
      | lot                                       |
      | Lot 1 - Business                          |
      | Lot 2 - Strategy and Policy               |
      | Lot 3 - Complex and Transformation        |
      | Lot 4 - Finance                           |
      | Lot 5 - HR                                |
      | Lot 6 - Procurement and Supply Chain      |
      | Lot 7 - Health, Social Care and Community |
      | Lot 8 - Infrastructure                    |
      | Lot 9 - Environment and Sustainability    |
      | Lot 10 - Restructuring and insolvency     |

  @skip-non-production @smoulder
  Scenario: Select the services you need validation
    Given I select 'Lot 1 - Business'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    When I click on 'Continue'
    Then I should see the following error messages:
      | Select the service or services you need |
