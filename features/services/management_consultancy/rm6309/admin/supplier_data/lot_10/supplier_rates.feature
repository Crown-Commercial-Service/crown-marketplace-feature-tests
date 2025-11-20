Feature: Management Consultancy - Admin - Supplier lot data - Lot 10 - Rates

  Background: Go to rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'PAUCEK-HERMAN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'PAUCEK-HERMAN'
    And I click on 'View rates' for the lot 'Lot 10 - Restructuring and insolvency'
    Then I am on the 'Lot 10 - Restructuring and insolvency View rates' page
    And the caption is 'PAUCEK-HERMAN'

  Scenario: Rates
    And the rates in the table are:
      | Position                                   | Max day rate (Complex) | Max day rate (Non-Complex) |
      | Partner / Managing Director                | £1,730                 | £1,790                     |
      | Managing Consultant / Director             | £1,620                 | £1,680                     |
      | Principal Consultant / Associate Director  | £1,520                 | £1,570                     |
      | Senior Consultant / Manager / Project Lead | £1,410                 | £1,460                     |
      | Consultant / Senior Analyst                | £1,300                 | £1,350                     |
      | Analyst / Junior Consultant                | £1,190                 | £1,240                     |

  Scenario Outline: Rates validation
    Given I click on 'Change (Rates for the supplier)'
    Then I am on the 'Edit rates' page
    And the caption is 'PAUCEK-HERMAN'
    Then I enter the following rates into the form:
      | Principal Consultant / Associate Director | <rate> | 10.00 |
    And I click on 'Save and return'
    Then I am on the 'Edit rates' page
    And I should see the following error messages:
      | <error_message> |

    Examples:
      | rate        | error_message                                            |
      |             | You must enter a value for this rate                     |
      | Not a rate  | The rate must be formatted as money, for example £350.50 |
      | 55.5        | The rate must be formatted as money, for example £350.50 |
      | 10000000.00 | The rate must be less than £1,000,000                    |
