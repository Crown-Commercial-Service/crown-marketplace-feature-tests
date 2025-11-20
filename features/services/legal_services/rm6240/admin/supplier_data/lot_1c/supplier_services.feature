Feature: Legal services - Admin - Supplier lot data - Lot 1c - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'RICE INC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'RICE INC'
    And I click on 'View services' for the lot 'Lot 1c - Full service provision (Northern Ireland)'
    Then I am on the 'Lot 1c - Full service provision View services' page
    And the caption is 'RICE INC'
    And the supplier should be assigned to the 'services' as follows:
      | Administrative and Public Law                  |
      | Charities Law                                  |
      | Competition Law                                |
      | Contracts                                      |
      | Corporate Law                                  |
      | Data Protection and Information Law            |
      | Employment                                     |
      | Energy, Natural Resources and Climate Change   |
      | Franchise Law                                  |
      | Health and Safety                              |
      | Immigration                                    |
      | Information Technology                         |
      | Infrastructure                                 |
      | Intellectual Property                          |
      | International Trade, Investment and Regulation |
      | Life Sciences                                  |
      | Litigation and Dispute Resolution              |
      | Media Law                                      |
      | Non-Complex Finance and Investment             |
      | Outsourcing / Insourcing                       |
      | Partnerships                                   |
      | Pensions                                       |
      | Planning                                       |
      | Projects                                       |
      | Property, Real Estate and Construction         |
      | Public Inquests and Inquiries                  |
      | Public International Law                       |
      | Public Procurement                             |
      | Restructuring and Insolvency                   |
      | Retained EU Law and EU Law                     |
      | Tax                                            |
      | Telecommunications                             |
      | Transport Law (excluding Rail)                 |
