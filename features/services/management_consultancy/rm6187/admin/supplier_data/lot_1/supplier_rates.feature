Feature: Management Consultancy - Admin - Supplier lot data - Lot 1 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'NITZSCHE-DECKOW'
    Then I am on the 'Supplier lot data' page
    And the caption is 'NITZSCHE-DECKOW'
    And I click on 'View rates' for the lot 'Lot 1 - Business'
    Then I am on the 'Lot 1 - Business - Rates' page
    And the caption is 'NITZSCHE-DECKOW'
    And the rates in the table are:
      | Position                                              | Max day rate |
      | Analyst / Junior Consultant                           | £350         |
      | Consultant                                            | £500         |
      | Senior Consultant / Engagement Manager / Project Lead | £600         |
      | Principal Consultant / Associate Director             | £750         |
      | Managing Consultant / Director                        | £900         |
      | Partner                                               | £1,100       |
