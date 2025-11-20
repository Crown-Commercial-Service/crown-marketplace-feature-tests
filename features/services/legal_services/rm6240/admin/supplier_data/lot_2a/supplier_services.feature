Feature: Legal services - Admin - Supplier lot data - Lot 2a - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'RICE-KREIGER'
    Then I am on the 'Supplier lot data' page
    And the caption is 'RICE-KREIGER'
    And I click on 'View services' for the lot 'Lot 2a - General service provision (England and Wales)'
    Then I am on the 'Lot 2a - General service provision View services' page
    And the caption is 'RICE-KREIGER'
    And the supplier should be assigned to the 'services' as follows:
      | Debt Recovery |
