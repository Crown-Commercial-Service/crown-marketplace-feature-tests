Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 5 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'KAUTZER, PFEFFER AND SCHUMM'
    Then I am on the 'Supplier lot data' page
    And the caption is 'KAUTZER, PFEFFER AND SCHUMM'
    And I click on 'View rates' for the lot 'Lot 5 - Rail Legal Services'
    Then I am on the 'Lot 5 - Rail Legal Services - Rates' page
    And the caption is 'KAUTZER, PFEFFER AND SCHUMM'
    And the rates in the 'United Kingdom' table are:
      | Position                                                           | Hourly |
      | Partner                                                            | £280   |
      | Legal Director/Counsel or equivalent                               | £245   |
      | Senior Solicitor, Senior Associate/Senior Legal Executive          | £210   |
      | Solicitor, Associate/Legal Executive                               | £175   |
      | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | £140   |
      | Trainee/Legal Apprentice                                           | £105   |
      | Paralegal, Legal Assistant                                         | £70    |
