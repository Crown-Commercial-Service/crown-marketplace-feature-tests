Feature: Management Consultancy - Admin - Supplier lot data - Lot 1 - Rates

  Background: Go to rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'HOPPE, MANTE AND METZ'
    Then I am on the 'Supplier lot data' page
    And the caption is 'HOPPE, MANTE AND METZ'
    And I click on 'View rates' for the lot 'Lot 1 - Business'
    Then I am on the 'Lot 1 - Business View rates' page
    And the caption is 'HOPPE, MANTE AND METZ'

  Scenario: Rates
    And the rates in the table are:
      | Position                                   | Max day rate (Advice) | Max day rate (Delivery) |
      | Partner / Managing Director                | £2,450                | £2,500                  |
      | Managing Consultant / Director             | £1,450                | £1,500                  |
      | Principal Consultant / Associate Director  | £800                  | £850                    |
      | Senior Consultant / Manager / Project Lead | £720                  | £770                    |
      | Consultant / Senior Analyst                | £600                  | £650                    |
      | Analyst / Junior Consultant                | £540                  | £590                    |

  Scenario Outline: Rates validation
    Given I click on 'Change (Rates for the supplier)'
    Then I am on the 'Edit rates' page
    And the caption is 'HOPPE, MANTE AND METZ'
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
