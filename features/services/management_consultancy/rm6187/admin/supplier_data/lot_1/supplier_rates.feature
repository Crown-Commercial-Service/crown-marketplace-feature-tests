Feature: Management Consultancy - Admin - Supplier lot data - Lot 1 - Rates

  Background: Go to rates
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'NITZSCHE-DECKOW'
    Then I am on the 'Supplier lot data' page
    And the caption is 'NITZSCHE-DECKOW'
    And I click on 'View rates' for the lot 'Lot 1 - Business'
    Then I am on the 'Lot 1 - Business View rates' page
    And the caption is 'NITZSCHE-DECKOW'

  Scenario: Rates
    And the rates in the table are:
      | Position                                              | Max day rate |
      | Analyst / Junior Consultant                           | £350         |
      | Consultant                                            | £500         |
      | Senior Consultant / Engagement Manager / Project Lead | £600         |
      | Principal Consultant / Associate Director             | £750         |
      | Managing Consultant / Director                        | £900         |
      | Partner                                               | £1,100       |

  Scenario Outline: Rates validation
    Given I click on 'Change (Rates for the supplier)'
    Then I am on the 'Edit rates' page
    And the caption is 'NITZSCHE-DECKOW'
    Then I enter the following rates into the form:
      | Managing Consultant / Director | <rate> |
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
