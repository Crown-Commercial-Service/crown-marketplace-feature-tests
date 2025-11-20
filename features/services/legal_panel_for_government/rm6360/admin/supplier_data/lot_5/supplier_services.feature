Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 5 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'KAUTZER, PFEFFER AND SCHUMM'
    Then I am on the 'Supplier lot data' page
    And the caption is 'KAUTZER, PFEFFER AND SCHUMM'
    And I click on 'View services' for the lot 'Lot 5 - Rail Legal Services'
    Then I am on the 'Lot 5 - Rail Legal Services View services' page
    And the caption is 'KAUTZER, PFEFFER AND SCHUMM'
    And the supplier should be assigned to the 'services' as follows:
      | Competition law                               |
      | Dispute Resolution and litigation law         |
      | Employment law                                |
      | Environmental law                             |
      | EU law                                        |
      | Health and Safety law                         |
      | Information law including data protection law |
      | Information technology law                    |
      | Insurance law                                 |
      | Intellectual property law                     |
      | International law                             |
      | Pensions law                                  |
      | Planning law                                  |
      | Public procurement law                        |
      | Rail Commercial Law                           |
      | Real estate law                               |
      | Regulatory law                                |
      | Restructuring/ Insolvency law                 |
      | Subsidy Control Law                           |
      | Tax law                                       |
