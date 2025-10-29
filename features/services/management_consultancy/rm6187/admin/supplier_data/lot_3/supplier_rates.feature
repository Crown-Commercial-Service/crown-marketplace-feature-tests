Feature: Management Consultancy - Admin - Supplier lot data - Lot 3 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'KSHLERIN INC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'KSHLERIN INC'
    And I click on 'View rates' for the lot 'Lot 3 - Complex and Transformation'
    Then I am on the 'Lot 3 - Complex and Transformation - Rates' page
    And the caption is 'KSHLERIN INC'
    And the rates in the table are:
      | Position                                              | Max day rate |
      | Analyst / Junior Consultant                           | £560         |
      | Consultant                                            | £630         |
      | Senior Consultant / Engagement Manager / Project Lead | £700         |
      | Principal Consultant / Associate Director             | £900         |
      | Managing Consultant / Director                        | £1,800       |
      | Partner                                               | £3,600       |
