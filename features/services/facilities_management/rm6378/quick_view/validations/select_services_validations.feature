Feature: Facilities Management - RM6378 - Select services validations

  Background: Navigate to the services page
    Given I sign in and navigate to the start page for the 'RM6378' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'

  @smoulder @production
  Scenario: No services selected
    And I click on 'Continue'
    Then I should see the following error messages:
      | Select at least one service you need to include in your procurement |

  Scenario Outline: Only mandatory services - one extra
    When I check the following items:
      | <service> |
    And I click on 'Continue'
    Then I should see the following error messages:
      | You must select another service to include 'CAFM system' and/or 'Helpdesk services' |

    Examples:
      | service           |
      | CAFM system       |
      | Helpdesk Services |

  @smoulder @production
  Scenario: Only mandatory services - two extra
    When I check the following items:
      | CAFM system       |
      | Helpdesk Services |
    And I click on 'Continue'
    Then I should see the following error messages:
      | You must select another service to include 'CAFM system' and/or 'Helpdesk services' |
