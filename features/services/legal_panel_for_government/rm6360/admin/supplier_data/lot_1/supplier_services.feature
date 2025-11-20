Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 1 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'BATZ-BROWN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'BATZ-BROWN'
    And I click on 'View services' for the lot 'Lot 1 - Core Legal Services'
    Then I am on the 'Lot 1 - Core Legal Services View services' page
    And the caption is 'BATZ-BROWN'
    And the supplier should be assigned to the 'services' as follows:
      | Assimilated Law                               |
      | Charities                                     |
      | Children and Vulnerable Adults                |
      | Commercial Litigation and Dispute Resolution  |
      | Competition Law                               |
      | Construction Law                              |
      | Contracts                                     |
      | Corporate Law                                 |
      | Education Law                                 |
      | Employment Law                                |
      | Energy and Natural Resources                  |
      | Environmental Law                             |
      | Finance and Investment                        |
      | Grants                                        |
      | Health and Safety                             |
      | Health, Healthcare and Social Care            |
      | Immigration                                   |
      | Information Law including Data Protection Law |
      | Insurance and Reinsurance                     |
      | Intellectual Property Law                     |
      | Life Sciences                                 |
      | Maritime and Shipping                         |
      | Media Law                                     |
      | Merger & Acquisition Activity                 |
      | Partnership Law                               |
      | Private Law Litigation and Dispute Resolution |
      | Projects/PFI/PPP                              |
      | Public Law                                    |
      | Real Estate and Real Estate Finance           |
      | Restructuring/Insolvency                      |
      | Sustainable Finance/ Green Finance            |
      | Tax Law                                       |
