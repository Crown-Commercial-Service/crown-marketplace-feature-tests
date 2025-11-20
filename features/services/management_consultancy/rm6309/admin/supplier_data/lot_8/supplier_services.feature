Feature: Management Consultancy - Admin - Supplier lot data - Lot 8 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'HUDSON LLC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'HUDSON LLC'
    And I click on 'View services' for the lot 'Lot 8 - Infrastructure'
    Then I am on the 'Lot 8 - Infrastructure View services' page
    And the caption is 'HUDSON LLC'
    And the supplier should be assigned to the 'services' as follows:
      | Aerospace                                    |
      | Automotive                                   |
      | Aviation                                     |
      | Communications and technology infrastructure |
      | Defence                                      |
      | Nuclear                                      |
      | Ports and shipping                           |
      | Public transport                             |
      | Rail                                         |
      | Smart infrastructure                         |
      | Towns, cities and rural areas                |
      | Travel, transportation and logistics         |
