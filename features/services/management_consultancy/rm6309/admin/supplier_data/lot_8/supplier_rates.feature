Feature: Management Consultancy - Admin - Supplier lot data - Lot 8 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'HUDSON LLC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'HUDSON LLC'
    And I click on 'View rates' for the lot 'Lot 8 - Infrastructure'
    Then I am on the 'Lot 8 - Infrastructure - Rates' page
    And the caption is 'HUDSON LLC'
    And the rates in the table are:
      | Position                                   | Max day rate (Advice) | Max day rate (Delivery) |
      | Partner / Managing Director                | £2,950                | £3,000                  |
      | Managing Consultant / Director             | £2,350                | £2,400                  |
      | Principal Consultant / Associate Director  | £1,450                | £1,500                  |
      | Senior Consultant / Manager / Project Lead | £1,290                | £1,340                  |
      | Consultant / Senior Analyst                | £1,100                | £1,150                  |
      | Analyst / Junior Consultant                | £970                  | £1,020                  |
