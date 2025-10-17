Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 2 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'WELCH, PAGAC AND SWIFT'
    Then I am on the 'Supplier lot data' page
    And the caption is 'WELCH, PAGAC AND SWIFT'
    And I click on 'View services' for the lot 'Lot 2 - Major Projects and Complex Advice'
    Then I am on the 'Lot 2 - Major Projects and Complex Advice - Services' page
    And the caption is 'WELCH, PAGAC AND SWIFT'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                                | Has service? |
      | Assimilated Law                                             | Yes          |
      | Aviation and Airports                                       | Yes          |
      | Charities                                                   | No           |
      | Children and Vulnerable Adults                              | No           |
      | Commercial Litigation and Dispute Resolution                | No           |
      | Competition Law                                             | Yes          |
      | Construction Law                                            | No           |
      | Contracts                                                   | No           |
      | Corporate Finance                                           | Yes          |
      | Corporate Law                                               | No           |
      | Credit Insurance and Related Products                       | Yes          |
      | Debt Capital Markets                                        | Yes          |
      | Education Law                                               | No           |
      | Employment Law                                              | No           |
      | Energy and Natural Resources                                | Yes          |
      | Environmental Law                                           | No           |
      | Equity Capital Markets                                      | Yes          |
      | Finance and Investment                                      | Yes          |
      | Financial Institutions Rescue, Restructuring and Insolvency | Yes          |
      | Financial Services, Market and Competition Regulation       | Yes          |
      | Fintech Crypto Assets                                       | No           |
      | Food, Rural and Environmental Affairs                       | Yes          |
      | Franchise Law                                               | No           |
      | Grants                                                      | No           |
      | Health and Safety                                           | Yes          |
      | Health, Healthcare and Social Care                          | Yes          |
      | Housing Law                                                 | Yes          |
      | Immigration                                                 | No           |
      | Information Law including Data Protection Law               | No           |
      | Information Technology Law                                  | No           |
      | Insurance and Reinsurance                                   | Yes          |
      | Intellectual Property Law                                   | Yes          |
      | International Development/Aid Funding                       | No           |
      | International Finance Organisations                         | Yes          |
      | International Trade                                         | No           |
      | Investment and Asset Management                             | Yes          |
      | Investment and Commercial Banking                           | No           |
      | Islamic Finance / Sukuk                                     | Yes          |
      | Life Sciences                                               | No           |
      | Maritime and Shipping                                       | No           |
      | Media Law                                                   | Yes          |
      | Merger & Acquisition Activity                               | No           |
      | Outsourcing                                                 | No           |
      | Partnership Law                                             | No           |
      | Pensions Law                                                | No           |
      | Planning Law                                                | No           |
      | Private Law Litigation and Dispute resolution               | Yes          |
      | Project and Asset Finance                                   | Yes          |
      | Projects/PFI/PPP                                            | No           |
      | Public Inquiries - Support to Participants and Inquests     | No           |
      | Public International Law                                    | Yes          |
      | Public Law                                                  | No           |
      | Public Law Litigation and Dispute Resolution                | Yes          |
      | Public Procurement Law                                      | No           |
      | Real Estate and Real Estate Finance                         | No           |
      | Restructuring/Insolvency                                    | No           |
      | Supporting Public Inquiries                                 | No           |
      | Sustainable Finance / Green Finance                         | No           |
      | Tax Law                                                     | No           |
