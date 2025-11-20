Feature: Management Consultancy - Admin - Supplier lot data - Lot 2 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'HIRTHE INC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'HIRTHE INC'
    And I click on 'View rates' for the lot 'Lot 2 - Strategy and Policy'
    Then I am on the 'Lot 2 - Strategy and Policy View rates' page
    And the caption is 'HIRTHE INC'
    And the rates in the table are:
      | Position                                              | Max day rate |
      | Analyst / Junior Consultant                           | £620         |
      | Consultant                                            | £700         |
      | Senior Consultant / Engagement Manager / Project Lead | £890         |
      | Principal Consultant / Associate Director             | £1,000       |
      | Managing Consultant / Director                        | £1,400       |
      | Partner                                               | £1,800       |
