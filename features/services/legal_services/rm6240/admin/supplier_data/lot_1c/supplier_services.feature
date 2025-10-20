Feature: Legal services - Admin - Supplier lot data - Lot 1c - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'RICE INC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'RICE INC'
    And I click on 'View services' for the lot 'Lot 1c - Full service provision (Northern Ireland)'
    Then I am on the 'Lot 1c - Full service provision - Services' page
    And the caption is 'RICE INC'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                   | Has service? |
      | Administrative and Public Law                  | Yes          |
      | Charities Law                                  | Yes          |
      | Children and Vulnerable Adults                 | No           |
      | Competition Law                                | Yes          |
      | Contracts                                      | Yes          |
      | Corporate Law                                  | Yes          |
      | Data Protection and Information Law            | Yes          |
      | Education Law                                  | No           |
      | Employment                                     | Yes          |
      | Energy, Natural Resources and Climate Change   | Yes          |
      | Food, Rural and Environmental Affairs          | No           |
      | Franchise Law                                  | Yes          |
      | Health and Safety                              | Yes          |
      | Health, Healthcare and Social Care             | No           |
      | Immigration                                    | Yes          |
      | Information Technology                         | Yes          |
      | Infrastructure                                 | Yes          |
      | Intellectual Property                          | Yes          |
      | International Trade, Investment and Regulation | Yes          |
      | Islamic Finance / Sukuk                        | No           |
      | Licensing Law                                  | No           |
      | Life Sciences                                  | Yes          |
      | Litigation and Dispute Resolution              | Yes          |
      | Media Law                                      | Yes          |
      | Mental Health Law                              | No           |
      | Non-Complex Finance and Investment             | Yes          |
      | Outsourcing / Insourcing                       | Yes          |
      | Partnerships                                   | Yes          |
      | Pensions                                       | Yes          |
      | Planning                                       | Yes          |
      | Projects                                       | Yes          |
      | Property, Real Estate and Construction         | Yes          |
      | Public Inquests and Inquiries                  | Yes          |
      | Public International Law                       | Yes          |
      | Public Procurement                             | Yes          |
      | Restructuring and Insolvency                   | Yes          |
      | Retained EU Law and EU Law                     | Yes          |
      | Tax                                            | Yes          |
      | Telecommunications                             | Yes          |
      | Transport Law (excluding Rail)                 | Yes          |
