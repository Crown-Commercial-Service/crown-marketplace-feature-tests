Feature: Management Consultancy - Admin - Supplier lot data - Lot 7 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'FISHER-DECKOW'
    Then I am on the 'Supplier lot data' page
    And the caption is 'FISHER-DECKOW'
    And I click on 'View services' for the lot 'Lot 7 - Health, Social Care and Community'
    Then I am on the 'Lot 7 - Health, Social Care and Community View services' page
    And the caption is 'FISHER-DECKOW'
    And the supplier should be assigned to the 'services' as follows:
      | Alternative delivery models                                 |
      | Business case development                                   |
      | Commissioning models                                        |
      | Community services                                          |
      | Digital, technology and cyber                               |
      | Healthcare operational review, improvement and/or modelling |
      | Healthcare services                                         |
      | Healthcare transformation, change and delivery              |
      | Planning for health, social care and community              |
      | Programme and project management                            |
      | Public service improvement review                           |
