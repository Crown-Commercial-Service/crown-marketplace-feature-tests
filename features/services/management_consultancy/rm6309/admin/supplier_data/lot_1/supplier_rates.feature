Feature: Management Consultancy - Admin - Supplier lot data - Lot 1 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'HOPPE, MANTE AND METZ'
    Then I am on the 'Supplier lot data' page
    And the caption is 'HOPPE, MANTE AND METZ'
    And I click on 'View rates' for the lot 'Lot 1 - Business'
    Then I am on the 'Lot 1 - Business - Rates' page
    And the caption is 'HOPPE, MANTE AND METZ'
    And the rates in the table are:
      | Position                                   | Max day rate (Advice) | Max day rate (Delivery) |
      | Partner / Managing Director                | £2,450                | £2,500                  |
      | Managing Consultant / Director             | £1,450                | £1,500                  |
      | Principal Consultant / Associate Director  | £800                  | £850                    |
      | Senior Consultant / Manager / Project Lead | £720                  | £770                    |
      | Consultant / Senior Analyst                | £600                  | £650                    |
      | Analyst / Junior Consultant                | £540                  | £590                    |
