Feature: Management Consultancy - Admin - Supplier lot data - Lot 4 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'UPTON AND SONS'
    Then I am on the 'Supplier lot data' page
    And the caption is 'UPTON AND SONS'
    And I click on 'View rates' for the lot 'Lot 4 - Finance'
    Then I am on the 'Lot 4 - Finance - Rates' page
    And the caption is 'UPTON AND SONS'
    And the rates in the table are:
      | Position                                              | Max day rate |
      | Analyst / Junior Consultant                           | £600         |
      | Consultant                                            | £850         |
      | Senior Consultant / Engagement Manager / Project Lead | £1,200       |
      | Principal Consultant / Associate Director             | £1,550       |
      | Managing Consultant / Director                        | £1,900       |
      | Partner                                               | £2,150       |
