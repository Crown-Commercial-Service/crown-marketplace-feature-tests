@skip-production
Feature: Management Consultancy - Admin - Supplier lot data - Lot 5 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'SAUER, MCCULLOUGH AND SCHADEN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'SAUER, MCCULLOUGH AND SCHADEN'
    And I click on 'View services' for the lot 'Lot 5 - HR'
    Then I am on the 'Lot 5 - HR - Services' page
    And the caption is 'SAUER, MCCULLOUGH AND SCHADEN'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                    | Has service? |
      | Capability development                          | Yes          |
      | Cultural transformation                         | Yes          |
      | Dispute management                              | No           |
      | Diversity and inclusion                         | Yes          |
      | Employee relations                              | Yes          |
      | HR functions, process and design                | Yes          |
      | HR policy                                       | Yes          |
      | Organisational design and/or workforce planning | Yes          |
      | Performance management                          | Yes          |
      | Training and development                        | Yes          |
