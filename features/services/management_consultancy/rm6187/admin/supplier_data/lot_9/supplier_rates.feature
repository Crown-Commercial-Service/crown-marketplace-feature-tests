Feature: Management Consultancy - Admin - Supplier lot data - Lot 9 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'WOLF, BEIER AND GOODWIN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'WOLF, BEIER AND GOODWIN'
    And I click on 'View rates' for the lot 'Lot 9 - Environmental Sustainability and Socio-economic Development'
    Then I am on the 'Lot 9 - Environmental Sustainability and Socio-economic Development - Rates' page
    And the caption is 'WOLF, BEIER AND GOODWIN'
    And the rates in the table are:
      | Position                                              | Max day rate |
      | Analyst / Junior Consultant                           | £720         |
      | Consultant                                            | £810         |
      | Senior Consultant / Engagement Manager / Project Lead | £900         |
      | Principal Consultant / Associate Director             | £1,000       |
      | Managing Consultant / Director                        | £1,250       |
      | Partner                                               | £1,700       |
