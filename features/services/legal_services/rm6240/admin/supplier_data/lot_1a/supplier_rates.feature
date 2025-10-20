Feature: Legal services - Admin - Supplier lot data - Lot 1a - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'HALEY-SCHOEN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'HALEY-SCHOEN'
    And I click on 'View rates' for the lot 'Lot 1a - Full service provision (England and Wales)'
    Then I am on the 'Lot 1a - Full service provision - Rates' page
    And the caption is 'HALEY-SCHOEN'
    And the rates in the table are:
      | Position                                           | Hourly |
      | Partner                                            | £220   |
      | Senior Solicitor, Senior Associate                 | £195   |
      | Solicitor, Associate                               | £170   |
      | NQ Solicitor/Associate, Junior Solicitor/Associate | £155   |
      | Trainee                                            | £100   |
      | Paralegal, Legal Assistant                         | £90    |
      | LMP (Legal project manager)                        | £95    |
