Feature: Management Consultancy - Admin - Supplier lot data - Lot 6 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'ABSHIRE, QUITZON AND HOWE'
    Then I am on the 'Supplier lot data' page
    And the caption is 'ABSHIRE, QUITZON AND HOWE'
    And I click on 'View rates' for the lot 'Lot 6 - Procurement and Supply Chain'
    Then I am on the 'Lot 6 - Procurement and Supply Chain - Rates' page
    And the caption is 'ABSHIRE, QUITZON AND HOWE'
    And the rates in the table are:
      | Position                                   | Max day rate (Advice) | Max day rate (Delivery) |
      | Partner / Managing Director                | £1,200                | £1,265                  |
      | Managing Consultant / Director             | £1,050                | £1,115                  |
      | Principal Consultant / Associate Director  | £750                  | £815                    |
      | Senior Consultant / Manager / Project Lead | £600                  | £665                    |
      | Consultant / Senior Analyst                | £540                  | £605                    |
      | Analyst / Junior Consultant                | £480                  | £545                    |
