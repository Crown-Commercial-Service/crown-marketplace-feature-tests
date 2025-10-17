Feature: Management Consultancy - Admin - Supplier lot data - Lot 4 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'GRIMES-KUHLMAN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'GRIMES-KUHLMAN'
    And I click on 'View rates' for the lot 'Lot 4 - Finance'
    Then I am on the 'Lot 4 - Finance - Rates' page
    And the caption is 'GRIMES-KUHLMAN'
    And the rates in the table are:
      | Position                                   | Max day rate (Advice) | Max day rate (Delivery) |
      | Partner / Managing Director                | £4,680                | £4,730                  |
      | Managing Consultant / Director             | £4,000                | £4,050                  |
      | Principal Consultant / Associate Director  | £3,520                | £3,570                  |
      | Senior Consultant / Manager / Project Lead | £2,960                | £3,010                  |
      | Consultant / Senior Analyst                | £2,660                | £2,710                  |
      | Analyst / Junior Consultant                | £1,740                | £1,790                  |
