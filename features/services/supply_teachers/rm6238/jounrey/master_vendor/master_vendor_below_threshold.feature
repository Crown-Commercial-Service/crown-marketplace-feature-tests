Feature: Supply Teachers - Master vendors - Below threshold

  Background: Navigate to the  Master vendors result page
    Given I sign in and navigate to the start page for the 'RM6238' framework in 'supply teachers'
    And I select "An agency to manage all my school's needs; a 'managed service provider'"
    And I click on 'Continue'
    Then I am on the 'Is your contract likely to be worth more than £2.5 million?' page
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Master vendor managed service providers' page
    And the caption is 'Contract worth less than £2.5 million'

  @skip-production
  Scenario: Master vendors - Below threshold results
    And there are 3 managed service provider agencies
    And the managed service provider agencies are:
      | BOGAN, REICHERT AND COLLIER |
      | LUETTGEN-GUTMANN            |
      | O'HARA LLC                  |
    And the contact details for the managed service provider 'LUETTGEN-GUTMANN' are:
      | Adrian Hane                                   |
      | 1-943-719-6600 x77799                         |
      | luettgen.gutmann@wintheiser-breitenberg.name  |
    And the master vendor agency 'LUETTGEN-GUTMANN' has the following rates:
      | Teacher: (Incl. Qualified and Unqualified Teachers, Tutors) | £54.32  | £51.60  |
      | Over 12 Week Reduction                                      | 0.0%    | 0.0%    |
      | Fixed Term                                                  | 32.6%   | 32.6%   |
    And I click on 'Back'
    Then I am on the 'Is your contract likely to be worth more than £2.5 million?' page

  @skip-non-production
  Scenario: Master vendors - Below threshold results - Production
    And there are multiple managed service provider agencies
    And the first supplier has contact details
    And the first master vendor agency has the correct type of rates:
      | Teacher: (Incl. Qualified and Unqualified Teachers, Tutors)                           | £ |
      | Educational Support Staff: (incl. Cover Supervisor, Teaching Assistants)              | £ |
      | Senior Roles: Headteacher and Senior Leadership positions                             | £ |
      | Other Roles: (Invigilators, Admin & Clerical, IT Staff, Finance Staff, Cleaners etc.) | £ |
      | Over 12 Week Reduction                                                                | % |
      | Nominated Worker                                                                      | £ |
      | Fixed Term                                                                            | % |
    And I click on 'Back'
    Then I am on the 'Is your contract likely to be worth more than £2.5 million?' page
