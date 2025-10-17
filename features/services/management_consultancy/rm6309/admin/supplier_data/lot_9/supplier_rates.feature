Feature: Management Consultancy - Admin - Supplier lot data - Lot 9 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'BRAKUS GROUP'
    Then I am on the 'Supplier lot data' page
    And the caption is 'BRAKUS GROUP'
    And I click on 'View rates' for the lot 'Lot 9 - Environment and Sustainability'
    Then I am on the 'Lot 9 - Environment and Sustainability - Rates' page
    And the caption is 'BRAKUS GROUP'
    And the rates in the table are:
      | Position                                   | Max day rate (Advice) | Max day rate (Delivery) |
      | Partner / Managing Director                | £1,000                | £1,020                  |
      | Managing Consultant / Director             | £900                  | £920                    |
      | Principal Consultant / Associate Director  | £750                  | £770                    |
      | Senior Consultant / Manager / Project Lead | £520                  | £540                    |
      | Consultant / Senior Analyst                | £400                  | £420                    |
      | Analyst / Junior Consultant                | £320                  | £340                    |
