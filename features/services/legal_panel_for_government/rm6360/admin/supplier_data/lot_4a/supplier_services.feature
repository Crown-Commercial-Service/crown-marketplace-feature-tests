@skip-production
Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 4a - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'BLICK GROUP'
    Then I am on the 'Supplier lot data' page
    And the caption is 'BLICK GROUP'
    And I click on 'View services' for the lot 'Lot 4a - Trade and Investment Negotiations'
    Then I am on the 'Lot 4a - Trade and Investment Negotiations - Services' page
    And the caption is 'BLICK GROUP'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                            | Has service? |
      | Assimilated Law                         | Yes          |
      | Domestic law of jurisdictions for trade | Yes          |
      | FTA chapters                            | Yes          |
      | Implementation of trade agreements      | Yes          |
      | International law of trade              | Yes          |
      | International treaty law                | Yes          |
      | Investment treaties                     | Yes          |
      | Legal barriers to markets               | Yes          |
      | Trade and investment negotiations       | Yes          |
      | Wider trading arrangements              | Yes          |
