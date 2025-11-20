Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 2 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'WELCH, PAGAC AND SWIFT'
    Then I am on the 'Supplier lot data' page
    And the caption is 'WELCH, PAGAC AND SWIFT'
    And I click on 'View services' for the lot 'Lot 2 - Major Projects and Complex Advice'
    Then I am on the 'Lot 2 - Major Projects and Complex Advice View services' page
    And the caption is 'WELCH, PAGAC AND SWIFT'
    And the supplier should be assigned to the 'services' as follows:
      | Assimilated Law                                             |
      | Aviation and Airports                                       |
      | Competition Law                                             |
      | Corporate Finance                                           |
      | Credit Insurance and Related Products                       |
      | Debt Capital Markets                                        |
      | Energy and Natural Resources                                |
      | Equity Capital Markets                                      |
      | Finance and Investment                                      |
      | Financial Institutions Rescue, Restructuring and Insolvency |
      | Financial Services, Market and Competition Regulation       |
      | Food, Rural and Environmental Affairs                       |
      | Health and Safety                                           |
      | Health, Healthcare and Social Care                          |
      | Housing Law                                                 |
      | Insurance and Reinsurance                                   |
      | Intellectual Property Law                                   |
      | International Finance Organisations                         |
      | Investment and Asset Management                             |
      | Islamic Finance / Sukuk                                     |
      | Media Law                                                   |
      | Private Law Litigation and Dispute resolution               |
      | Project and Asset Finance                                   |
      | Public International Law                                    |
      | Public Law Litigation and Dispute Resolution                |
