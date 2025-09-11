@skip-production
Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 1 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'BATZ-BROWN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'BATZ-BROWN'
    And I click on 'View rates' for the lot 'Lot 1 - Core Legal Services'
    Then I am on the 'Lot 1 - Core Legal Services - Rates' page
    And the caption is 'BATZ-BROWN'
    And the rates in the 'United Kingdom' table are:
      | Position                                                           | Hourly |
      | Partner                                                            | £200   |
      | Legal Director/Counsel or equivalent                               | £175   |
      | Senior Solicitor, Senior Associate/Senior Legal Executive          | £150   |
      | Solicitor, Associate/Legal Executive                               | £125   |
      | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | £100   |
      | Trainee/Legal Apprentice                                           | £75    |
      | Paralegal, Legal Assistant                                         | £50    |
