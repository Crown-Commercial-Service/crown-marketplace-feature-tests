Feature: Management Consultancy - Admin - Supplier lot data - Lot 2 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'SMITH AND SONS'
    Then I am on the 'Supplier lot data' page
    And the caption is 'SMITH AND SONS'
    And I click on 'View rates' for the lot 'Lot 2 - Strategy and Policy'
    Then I am on the 'Lot 2 - Strategy and Policy - Rates' page
    And the caption is 'SMITH AND SONS'
    And the rates in the table are:
      | Position                                   | Max day rate (Advice) | Max day rate (Delivery) |
      | Partner / Managing Director                | £2,800                | £2,845                  |
      | Managing Consultant / Director             | £2,200                | £2,245                  |
      | Principal Consultant / Associate Director  | £1,350                | £1,395                  |
      | Senior Consultant / Manager / Project Lead | £1,150                | £1,195                  |
      | Consultant / Senior Analyst                | £980                  | £1,025                  |
      | Analyst / Junior Consultant                | £860                  | £905                    |
