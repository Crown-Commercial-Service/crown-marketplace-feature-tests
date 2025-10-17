Feature: Management Consultancy - Admin - Supplier lot data - Lot 7 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'FISHER-DECKOW'
    Then I am on the 'Supplier lot data' page
    And the caption is 'FISHER-DECKOW'
    And I click on 'View services' for the lot 'Lot 7 - Health, Social Care and Community'
    Then I am on the 'Lot 7 - Health, Social Care and Community - Services' page
    And the caption is 'FISHER-DECKOW'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                                | Has service? |
      | Alternative delivery models                                 | Yes          |
      | Business case development                                   | Yes          |
      | Capability development                                      | No           |
      | Charity/third sector improvement review                     | No           |
      | Clinical evaluations                                        | No           |
      | Commissioning models                                        | Yes          |
      | Community services                                          | Yes          |
      | Digital, technology and cyber                               | Yes          |
      | Healthcare operational review, improvement and/or modelling | Yes          |
      | Healthcare services                                         | Yes          |
      | Healthcare transformation, change and delivery              | Yes          |
      | Housing                                                     | No           |
      | Mental healthcare                                           | No           |
      | Planning for health, social care and community              | Yes          |
      | Policing and security                                       | No           |
      | Programme and project management                            | Yes          |
      | Public service improvement review                           | Yes          |
      | Regeneration                                                | No           |
      | Safeguarding                                                | No           |
      | Social care services                                        | No           |
      | Strategy and policy                                         | No           |
