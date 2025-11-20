Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 2 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'WELCH, PAGAC AND SWIFT'
    Then I am on the 'Supplier lot data' page
    And the caption is 'WELCH, PAGAC AND SWIFT'
    And I click on 'View rates' for the lot 'Lot 2 - Major Projects and Complex Advice'
    Then I am on the 'Lot 2 - Major Projects and Complex Advice View rates' page
    And the caption is 'WELCH, PAGAC AND SWIFT'
    And the rates in the 'United Kingdom' table are:
      | Grade                                                              | Hourly  |
      | Partner                                                            | £240    |
      | Legal Director/Counsel or equivalent                               | £210    |
      | Senior Solicitor, Senior Associate/Senior Legal Executive          | £180    |
      | Solicitor, Associate/Legal Executive                               | £150    |
      | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | £120    |
      | Trainee/Legal Apprentice                                           | £90     |
      | Paralegal, Legal Assistant                                         | £60     |
      | Legal Project Managers                                             | £195.00 |
