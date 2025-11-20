Feature: Legal services - Admin - Supplier lot data - Lot 2c - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'ROWE GROUP'
    Then I am on the 'Supplier lot data' page
    And the caption is 'ROWE GROUP'
    And I click on 'View services' for the lot 'Lot 2c - General service provision (Northern Ireland)'
    Then I am on the 'Lot 2c - General service provision View services' page
    And the caption is 'ROWE GROUP'
    And the supplier should be assigned to the 'services' as follows:
      | Debt Recovery                   |
      | Education Law                   |
      | Employment                      |
      | Healthcare                      |
      | Intellectual Property           |
      | Licensing                       |
      | Litigation / Dispute Resolution |
      | Pensions                        |
      | Planning and Environment        |
      | Property and Construction       |
      | Social Housing                  |
