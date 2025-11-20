Feature: Legal services - Admin - Supplier lot data - Lot 2c - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'ROWE GROUP'
    Then I am on the 'Supplier lot data' page
    And the caption is 'ROWE GROUP'
    And I click on 'View rates' for the lot 'Lot 2c - General service provision (Northern Ireland)'
    Then I am on the 'Lot 2c - General service provision View rates' page
    And the caption is 'ROWE GROUP'
    And the rates in the table are:
      | Position                                           | Hourly |
      | Partner                                            | £190   |
      | Senior Solicitor, Senior Associate                 | £170   |
      | Solicitor, Associate                               | £150   |
      | NQ Solicitor/Associate, Junior Solicitor/Associate | £140   |
      | Trainee                                            | £85    |
      | Paralegal, Legal Assistant                         | £80    |
      | LMP (Legal project manager)                        | £160   |
