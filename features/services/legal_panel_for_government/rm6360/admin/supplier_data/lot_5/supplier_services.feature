Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 5 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'KAUTZER, PFEFFER AND SCHUMM'
    Then I am on the 'Supplier lot data' page
    And the caption is 'KAUTZER, PFEFFER AND SCHUMM'
    And I click on 'View services' for the lot 'Lot 5 - Rail Legal Services'
    Then I am on the 'Lot 5 - Rail Legal Services - Services' page
    And the caption is 'KAUTZER, PFEFFER AND SCHUMM'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                  | Has service? |
      | Competition law                               | Yes          |
      | Dispute Resolution and litigation law         | Yes          |
      | Employment law                                | Yes          |
      | Environmental law                             | Yes          |
      | EU law                                        | Yes          |
      | Health and Safety law                         | Yes          |
      | Information law including data protection law | Yes          |
      | Information technology law                    | Yes          |
      | Insurance law                                 | Yes          |
      | Intellectual property law                     | Yes          |
      | International law                             | Yes          |
      | Pensions law                                  | Yes          |
      | Planning law                                  | Yes          |
      | Public procurement law                        | Yes          |
      | Rail Commercial Law                           | Yes          |
      | Real estate law                               | Yes          |
      | Regulatory law                                | Yes          |
      | Restructuring/ Insolvency law                 | Yes          |
      | Subsidy Control Law                           | Yes          |
      | Tax law                                       | Yes          |
