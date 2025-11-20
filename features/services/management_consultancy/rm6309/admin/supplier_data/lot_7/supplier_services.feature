Feature: Management Consultancy - Admin - Supplier lot data - Lot 7 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'LITTEL-WELCH'
    Then I am on the 'Supplier lot data' page
    And the caption is 'LITTEL-WELCH'
    And I click on 'View services' for the lot 'Lot 7 - Health, Social Care and Community'
    Then I am on the 'Lot 7 - Health, Social Care and Community View services' page
    And the caption is 'LITTEL-WELCH'
    And the supplier should be assigned to the 'services' as follows:
      | Alternative delivery models                                 |
      | Business case development                                   |
      | Community services                                          |
      | Healthcare operational review, improvement and/or modelling |
      | Healthcare transformation, change and delivery              |
      | Mental healthcare                                           |
      | Not for profit                                              |
      | Public service improvement review                           |
      | Regeneration                                                |
      | Security and welfare                                        |
