Feature: Management Consultancy - Admin - Supplier lot data - Lot 5 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'DACH INC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'DACH INC'
    And I click on 'View rates' for the lot 'Lot 5 - HR'
    Then I am on the 'Lot 5 - HR View rates' page
    And the caption is 'DACH INC'
    And the rates in the table are:
      | Position                                   | Max day rate (Advice) | Max day rate (Delivery) |
      | Partner / Managing Director                | £2,000                | £2,045                  |
      | Managing Consultant / Director             | £1,600                | £1,645                  |
      | Principal Consultant / Associate Director  | £1,250                | £1,295                  |
      | Senior Consultant / Manager / Project Lead | £850                  | £895                    |
      | Consultant / Senior Analyst                | £750                  | £795                    |
      | Analyst / Junior Consultant                | £650                  | £695                    |
