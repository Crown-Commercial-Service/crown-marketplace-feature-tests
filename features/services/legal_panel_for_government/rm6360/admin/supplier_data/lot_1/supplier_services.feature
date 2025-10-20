Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 1 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'BATZ-BROWN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'BATZ-BROWN'
    And I click on 'View services' for the lot 'Lot 1 - Core Legal Services'
    Then I am on the 'Lot 1 - Core Legal Services - Services' page
    And the caption is 'BATZ-BROWN'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                            | Has service? |
      | Assimilated Law                                         | Yes          |
      | Aviation and Airports                                   | No           |
      | Charities                                               | Yes          |
      | Children and Vulnerable Adults                          | Yes          |
      | Commercial Litigation and Dispute Resolution            | Yes          |
      | Competition Law                                         | Yes          |
      | Construction Law                                        | Yes          |
      | Contracts                                               | Yes          |
      | Corporate Law                                           | Yes          |
      | Education Law                                           | Yes          |
      | Employment Law                                          | Yes          |
      | Energy and Natural Resources                            | Yes          |
      | Environmental Law                                       | Yes          |
      | Finance and Investment                                  | Yes          |
      | Financial Services, Market and Competition Regulation   | No           |
      | Fintech Crypto Assets                                   | No           |
      | Food, Rural and Environmental Affairs                   | No           |
      | Franchise Law                                           | No           |
      | Grants                                                  | Yes          |
      | Health and Safety                                       | Yes          |
      | Health, Healthcare and Social Care                      | Yes          |
      | Housing Law                                             | No           |
      | Immigration                                             | Yes          |
      | Information Law including Data Protection Law           | Yes          |
      | Information Technology Law                              | No           |
      | Insurance and Reinsurance                               | Yes          |
      | Intellectual Property Law                               | Yes          |
      | International Trade                                     | No           |
      | Life Sciences                                           | Yes          |
      | Maritime and Shipping                                   | Yes          |
      | Media Law                                               | Yes          |
      | Merger & Acquisition Activity                           | Yes          |
      | Outsourcing                                             | No           |
      | Partnership Law                                         | Yes          |
      | Pensions Law                                            | No           |
      | Planning Law                                            | No           |
      | Private Law Litigation and Dispute Resolution           | Yes          |
      | Projects/PFI/PPP                                        | Yes          |
      | Public Inquiries - Support to Participants and Inquests | No           |
      | Public International Law                                | No           |
      | Public Law                                              | Yes          |
      | Public Law Litigation and dispute resolution            | No           |
      | Public Procurement Law                                  | No           |
      | Real Estate and Real Estate Finance                     | Yes          |
      | Restructuring/Insolvency                                | Yes          |
      | Supporting Public Inquiries                             | No           |
      | Sustainable Finance/ Green Finance                      | Yes          |
      | Tax Law                                                 | Yes          |
