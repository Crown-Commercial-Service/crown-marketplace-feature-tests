Feature: Legal services - Admin - Supplier lot data - Lot 1b - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'SCHNEIDER AND SONS'
    Then I am on the 'Supplier lot data' page
    And the caption is 'SCHNEIDER AND SONS'
    And I click on 'View rates' for the lot 'Lot 1b - Full service provision (Scotland)'
    Then I am on the 'Lot 1b - Full service provision View rates' page
    And the caption is 'SCHNEIDER AND SONS'
    And the rates in the table are:
      | Position                                           | Hourly |
      | Partner                                            | £245   |
      | Senior Solicitor, Senior Associate                 | £225   |
      | Solicitor, Associate                               | £195   |
      | NQ Solicitor/Associate, Junior Solicitor/Associate | £150   |
      | Trainee                                            | £100   |
      | Paralegal, Legal Assistant                         | £90    |
      | LMP (Legal project manager)                        | £235   |
