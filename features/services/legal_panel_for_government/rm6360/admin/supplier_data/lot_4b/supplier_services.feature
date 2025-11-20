Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 4b - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'RUSSEL AND SONS'
    Then I am on the 'Supplier lot data' page
    And the caption is 'RUSSEL AND SONS'
    And I click on 'View services' for the lot 'Lot 4b - International Trade Disputes'
    Then I am on the 'Lot 4b - International Trade Disputes View services' page
    And the caption is 'RUSSEL AND SONS'
    And the supplier should be assigned to the 'services' as follows:
      | Compliance with international law       |
      | Domestic law of jurisdictions for trade |
      | International trade disputes            |
      | Prevention of disputes                  |
      | Trade remedies                          |
      | Trade remedies investigations           |
      | Wider trading arrangements              |
      | WTO litigation and dispute resolution   |
      | WTO practice                            |
