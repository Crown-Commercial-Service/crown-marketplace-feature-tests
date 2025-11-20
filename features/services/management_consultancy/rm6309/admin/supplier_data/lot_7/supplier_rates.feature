Feature: Management Consultancy - Admin - Supplier lot data - Lot 7 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'LITTEL-WELCH'
    Then I am on the 'Supplier lot data' page
    And the caption is 'LITTEL-WELCH'
    And I click on 'View rates' for the lot 'Lot 7 - Health, Social Care and Community'
    Then I am on the 'Lot 7 - Health, Social Care and Community View rates' page
    And the caption is 'LITTEL-WELCH'
    And the rates in the table are:
      | Position                                   | Max day rate (Advice) | Max day rate (Delivery) |
      | Partner / Managing Director                | £4,800                | £4,830                  |
      | Managing Consultant / Director             | £2,520                | £2,550                  |
      | Principal Consultant / Associate Director  | £1,260                | £1,290                  |
      | Senior Consultant / Manager / Project Lead | £1,130                | £1,160                  |
      | Consultant / Senior Analyst                | £1,010                | £1,040                  |
      | Analyst / Junior Consultant                | £900                  | £930                    |
