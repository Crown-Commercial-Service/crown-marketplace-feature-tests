Feature: Management Consultancy - Admin - Supplier lot data - Lot 5 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'SAUER, MCCULLOUGH AND SCHADEN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'SAUER, MCCULLOUGH AND SCHADEN'
    And I click on 'View rates' for the lot 'Lot 5 - HR'
    Then I am on the 'Lot 5 - HR - Rates' page
    And the caption is 'SAUER, MCCULLOUGH AND SCHADEN'
    And the rates in the table are:
      | Position                                              | Max day rate |
      | Analyst / Junior Consultant                           | £640         |
      | Consultant                                            | £720         |
      | Senior Consultant / Engagement Manager / Project Lead | £800         |
      | Principal Consultant / Associate Director             | £1,150       |
      | Managing Consultant / Director                        | £2,300       |
      | Partner                                               | £4,600       |
