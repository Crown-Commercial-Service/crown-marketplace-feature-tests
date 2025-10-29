Feature: Legal services - Admin - Supplier lot data - Lot 1c - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'RICE INC'
    Then I am on the 'Supplier lot data' page
    And the caption is 'RICE INC'
    And I click on 'View rates' for the lot 'Lot 1c - Full service provision (Northern Ireland)'
    Then I am on the 'Lot 1c - Full service provision - Rates' page
    And the caption is 'RICE INC'
    And the rates in the table are:
      | Position                                           | Hourly |
      | Partner                                            | £330   |
      | Senior Solicitor, Senior Associate                 | £275   |
      | Solicitor, Associate                               | £215   |
      | NQ Solicitor/Associate, Junior Solicitor/Associate | £205   |
      | Trainee                                            | £100   |
      | Paralegal, Legal Assistant                         | £90    |
      | LMP (Legal project manager)                        | £250   |
