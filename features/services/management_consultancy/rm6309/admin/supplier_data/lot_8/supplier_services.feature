Feature: Management Consultancy - Admin - Supplier lot data - Lot 8 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'HUDSON LLC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'HUDSON LLC'
    And I click on 'View services' for the lot 'Lot 8 - Infrastructure'
    Then I am on the 'Lot 8 - Infrastructure - Services' page
    And the caption is 'HUDSON LLC'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                 | Has service? |
      | Aerospace                                    | Yes          |
      | Automotive                                   | Yes          |
      | Aviation                                     | Yes          |
      | Communications and technology infrastructure | Yes          |
      | Defence                                      | Yes          |
      | Highways                                     | No           |
      | Nuclear                                      | Yes          |
      | Ports and shipping                           | Yes          |
      | Public transport                             | Yes          |
      | Rail                                         | Yes          |
      | Smart infrastructure                         | Yes          |
      | Towns, cities and rural areas                | Yes          |
      | Travel, transportation and logistics         | Yes          |
