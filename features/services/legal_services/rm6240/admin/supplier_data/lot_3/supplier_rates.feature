@skip-production
Feature: Legal services - Admin - Supplier lot data - Lot 3 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'WEISSNAT INC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'WEISSNAT INC'
    And I click on 'View rates' for the lot 'Lot 3 - Transport rail legal services'
    Then I am on the 'Lot 3 - Transport rail legal services - Rates' page
    And the caption is 'WEISSNAT INC'
    And the rates in the table are:
      | Position                                           | Hourly |
      | Partner                                            | £250   |
      | Senior Solicitor, Senior Associate                 | £245   |
      | Solicitor, Associate                               | £235   |
      | NQ Solicitor/Associate, Junior Solicitor/Associate | £225   |
      | Trainee                                            | £100   |
      | Paralegal, Legal Assistant                         | £90    |
      | LMP (Legal project manager)                        | £150   |
