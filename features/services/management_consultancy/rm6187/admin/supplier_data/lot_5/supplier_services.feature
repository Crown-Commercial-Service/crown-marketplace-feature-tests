Feature: Management Consultancy - Admin - Supplier lot data - Lot 5 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'SAUER, MCCULLOUGH AND SCHADEN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'SAUER, MCCULLOUGH AND SCHADEN'
    And I click on 'View services' for the lot 'Lot 5 - HR'
    Then I am on the 'Lot 5 - HR View services' page
    And the caption is 'SAUER, MCCULLOUGH AND SCHADEN'
    And the supplier should be assigned to the 'services' as follows:
      | Capability development                          |
      | Cultural transformation                         |
      | Diversity and inclusion                         |
      | Employee relations                              |
      | HR functions, process and design                |
      | HR policy                                       |
      | Organisational design and/or workforce planning |
      | Performance management                          |
      | Training and development                        |
