Feature: Legal services - Admin - Supplier lot data - Lot 2a - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'RICE-KREIGER'
    Then I am on the 'Supplier lot data' page
    And the caption is 'RICE-KREIGER'
    And I click on 'View services' for the lot 'Lot 2a - General service provision (England and Wales)'
    Then I am on the 'Lot 2a - General service provision - Services' page
    And the caption is 'RICE-KREIGER'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                    | Has service? |
      | Child Law                       | No           |
      | Court of Protection             | No           |
      | Debt Recovery                   | Yes          |
      | Education Law                   | No           |
      | Employment                      | No           |
      | Healthcare                      | No           |
      | Intellectual Property           | No           |
      | Licensing                       | No           |
      | Litigation / Dispute Resolution | No           |
      | Mental Health Law               | No           |
      | Pensions                        | No           |
      | Planning and Environment        | No           |
      | Primary Care                    | No           |
      | Property and Construction       | No           |
      | Social Housing                  | No           |
