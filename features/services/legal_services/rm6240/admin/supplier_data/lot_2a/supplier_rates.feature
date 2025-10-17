Feature: Legal services - Admin - Supplier lot data - Lot 2a - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'RICE-KREIGER'
    Then I am on the 'Supplier lot data' page
    And the caption is 'RICE-KREIGER'
    And I click on 'View rates' for the lot 'Lot 2a - General service provision (England and Wales)'
    Then I am on the 'Lot 2a - General service provision - Rates' page
    And the caption is 'RICE-KREIGER'
    And the rates in the table are:
      | Position                                           | Hourly |
      | Partner                                            | £200   |
      | Senior Solicitor, Senior Associate                 | £175   |
      | Solicitor, Associate                               | £150   |
      | NQ Solicitor/Associate, Junior Solicitor/Associate | £125   |
      | Trainee                                            | £100   |
      | Paralegal, Legal Assistant                         | £90    |
      | LMP (Legal project manager)                        | £150   |
