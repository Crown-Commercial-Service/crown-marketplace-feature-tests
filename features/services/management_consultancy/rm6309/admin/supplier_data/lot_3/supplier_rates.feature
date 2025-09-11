@skip-production
Feature: Management Consultancy - Admin - Supplier lot data - Lot 3 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'HARVEY-COLLINS'
    Then I am on the 'Supplier lot data' page
    And the caption is 'HARVEY-COLLINS'
    And I click on 'View rates' for the lot 'Lot 3 - Complex and Transformation'
    Then I am on the 'Lot 3 - Complex and Transformation - Rates' page
    And the caption is 'HARVEY-COLLINS'
    And the rates in the table are:
      | Position                                   | Max day rate (Advice) | Max day rate (Delivery) |
      | Partner / Managing Director                | £3,000                | £3,065                  |
      | Managing Consultant / Director             | £2,400                | £2,465                  |
      | Principal Consultant / Associate Director  | £1,200                | £1,265                  |
      | Senior Consultant / Manager / Project Lead | £600                  | £665                    |
      | Consultant / Senior Analyst                | £540                  | £605                    |
      | Analyst / Junior Consultant                | £480                  | £545                    |
