Feature: Legal services - Admin - Supplier lot data - Lot 2b - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'LUEILWITZ, JAST AND GLEASON'
    Then I am on the 'Supplier lot data' page
    And the caption is 'LUEILWITZ, JAST AND GLEASON'
    And I click on 'View services' for the lot 'Lot 2b - General service provision (Scotland)'
    Then I am on the 'Lot 2b - General service provision View services' page
    And the caption is 'LUEILWITZ, JAST AND GLEASON'
    And the supplier should be assigned to the 'services' as follows:
      | Planning and Environment |
