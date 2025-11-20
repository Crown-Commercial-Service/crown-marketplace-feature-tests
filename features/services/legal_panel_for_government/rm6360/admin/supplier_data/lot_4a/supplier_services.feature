Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 4a - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'BLICK GROUP'
    Then I am on the 'Supplier lot data' page
    And the caption is 'BLICK GROUP'
    And I click on 'View services' for the lot 'Lot 4a - Trade and Investment Negotiations'
    Then I am on the 'Lot 4a - Trade and Investment Negotiations View services' page
    And the caption is 'BLICK GROUP'
    And the supplier should be assigned to the 'services' as follows:
      | Assimilated Law                         |
      | Domestic law of jurisdictions for trade |
      | FTA chapters                            |
      | Implementation of trade agreements      |
      | International law of trade              |
      | International treaty law                |
      | Investment treaties                     |
      | Legal barriers to markets               |
      | Trade and investment negotiations       |
      | Wider trading arrangements              |
