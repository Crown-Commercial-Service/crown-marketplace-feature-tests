Feature: Management Consultancy - Admin - Supplier lot data - Lot 1 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'NITZSCHE-DECKOW'
    Then I am on the 'Supplier lot data' page
    And the caption is 'NITZSCHE-DECKOW'
    And I click on 'View services' for the lot 'Lot 1 - Business'
    Then I am on the 'Lot 1 - Business - Services' page
    And the caption is 'NITZSCHE-DECKOW'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                          | Has service? |
      | Business case development                             | Yes          |
      | Business consultancy                                  | Yes          |
      | Business continuity and/or disaster recovery planning | No           |
      | Business policy strategy and/or appraisal             | Yes          |
      | Business processes                                    | No           |
      | Change management                                     | No           |
      | Development and/or review of policy                   | Yes          |
      | Digital, technology and cyber                         | No           |
      | Forecasting and/or planning                           | Yes          |
      | Operational planning and/or improvement               | No           |
      | Organisational review                                 | No           |
      | Programme & project management                        | Yes          |
      | Risk, compliance and/or opportunity management        | Yes          |
      | Value for money reviews                               | Yes          |
