Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 3 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'SCHMELER, KSHLERIN AND SHANAHAN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'SCHMELER, KSHLERIN AND SHANAHAN'
    And I click on 'View services' for the lot 'Lot 3 - Finance and High Risk/Innovation'
    Then I am on the 'Lot 3 - Finance and High Risk/Innovation View services' page
    And the caption is 'SCHMELER, KSHLERIN AND SHANAHAN'
    And the supplier should be assigned to the 'services' as follows:
      | International Development/Aid Funding |
      | Investment and Commercial Banking     |
      | Litigation and Dispute Resolution     |
      | Restructuring/Insolvency              |
      | Sovereign Debt Restructuring          |
