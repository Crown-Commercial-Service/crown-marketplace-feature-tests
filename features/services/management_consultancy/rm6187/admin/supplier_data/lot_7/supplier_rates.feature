Feature: Management Consultancy - Admin - Supplier lot data - Lot 7 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'FISHER-DECKOW'
    Then I am on the 'Supplier lot data' page
    And the caption is 'FISHER-DECKOW'
    And I click on 'View rates' for the lot 'Lot 7 - Health, Social Care and Community'
    Then I am on the 'Lot 7 - Health, Social Care and Community - Rates' page
    And the caption is 'FISHER-DECKOW'
    And the rates in the table are:
      | Position                                              | Max day rate |
      | Analyst / Junior Consultant                           | £680         |
      | Consultant                                            | £760         |
      | Senior Consultant / Engagement Manager / Project Lead | £850         |
      | Principal Consultant / Associate Director             | £1,050       |
      | Managing Consultant / Director                        | £1,750       |
      | Partner                                               | £2,500       |
