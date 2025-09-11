@skip-production
Feature: Management Consultancy - Admin - Supplier lot data - Lot 6 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'HARVEY-COLLINS'
    Then I am on the 'Supplier lot data' page
    And the caption is 'HARVEY-COLLINS'
    And I click on 'View rates' for the lot 'Lot 6 - Procurement and Supply Chain'
    Then I am on the 'Lot 6 - Procurement and Supply Chain - Rates' page
    And the caption is 'HARVEY-COLLINS'
    And the rates in the table are:
      | Position                                              | Max day rate |
      | Analyst / Junior Consultant                           | £630         |
      | Consultant                                            | £740         |
      | Senior Consultant / Engagement Manager / Project Lead | £870         |
      | Principal Consultant / Associate Director             | £990         |
      | Managing Consultant / Director                        | £1,320       |
      | Partner                                               | £1,760       |
