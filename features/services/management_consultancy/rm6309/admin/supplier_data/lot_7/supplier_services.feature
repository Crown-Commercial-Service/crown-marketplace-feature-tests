Feature: Management Consultancy - Admin - Supplier lot data - Lot 7 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'LITTEL-WELCH'
    Then I am on the 'Supplier lot data' page
    And the caption is 'LITTEL-WELCH'
    And I click on 'View services' for the lot 'Lot 7 - Health, Social Care and Community'
    Then I am on the 'Lot 7 - Health, Social Care and Community - Services' page
    And the caption is 'LITTEL-WELCH'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                                | Has service? |
      | Alternative delivery models                                 | Yes          |
      | Business case development                                   | Yes          |
      | Capability development                                      | No           |
      | Community services                                          | Yes          |
      | Digital, technology and cyber                               | No           |
      | Emergency services                                          | No           |
      | Healthcare operational review, improvement and/or modelling | Yes          |
      | Healthcare transformation, change and delivery              | Yes          |
      | Housing                                                     | No           |
      | Mental healthcare                                           | Yes          |
      | Not for profit                                              | Yes          |
      | Planning for health, social care and community              | No           |
      | Programme and project management                            | No           |
      | Public service improvement review                           | Yes          |
      | Regeneration                                                | Yes          |
      | Security and welfare                                        | Yes          |
      | Social care and safeguarding                                | No           |
      | Social mobility and levelling up                            | No           |
      | Sport, leisure and culture                                  | No           |
      | Strategy and/or policy                                      | No           |
