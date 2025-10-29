Feature: Management Consultancy - Admin - Supplier lot data - Lot 5 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'DACH INC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'DACH INC'
    And I click on 'View services' for the lot 'Lot 5 - HR'
    Then I am on the 'Lot 5 - HR - Services' page
    And the caption is 'DACH INC'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                          | Has service? |
      | Capability development                                | Yes          |
      | Cultural transformation                               | Yes          |
      | Equality, diversity and inclusion                     | Yes          |
      | HR functions, process and design                      | Yes          |
      | HR policy and strategy                                | Yes          |
      | Organisational design and/or workforce planning       | Yes          |
      | People and performance                                | No           |
      | Recruitment, retention and employee value proposition | Yes          |
      | Training and development                              | Yes          |
