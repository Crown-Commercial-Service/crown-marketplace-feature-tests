Feature: Supply Teachers - Master vendors - Above threshold

  Background: Navigate to the  Master vendors result page
    Given I sign in and navigate to the start page for the 'RM6238' framework in 'supply teachers'
    And I select "An agency to manage all my school's needs; a 'managed service provider'"
    And I click on 'Continue'
    Then I am on the 'Is your contract likely to be worth more than £2.5 million?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Master vendor managed service providers' page
    And the caption is 'Contract worth more than £2.5 million'

  @skip-production
  Scenario: Master vendors - Above threshold results
    And there are 3 managed service provider agencies
    And the managed service provider agencies are:
      | BOGAN, REICHERT AND COLLIER   |
      | MCGLYNN, BAILEY AND NIKOLAUS  |
      | O'HARA LLC                    |
    And the contact details for the managed service provider 'BOGAN, REICHERT AND COLLIER' are:
      | Ok Kuphal                             |
      | (670) 117-8868 x86891                 |
      | bogan.and.collier.reichert@murray.net |
    And the master vendor agency 'BOGAN, REICHERT AND COLLIER' has the following rates:
      | Teacher: (Incl. Qualified and Unqualified Teachers, Tutors) | £57.16  | £54.30  |
      | Over 12 Week Reduction                                      | 6.0%    | 6.0%    |
      | Fixed Term                                                  | 34.3%   | 34.3%   |
    And I click on 'Back'
    Then I am on the 'Is your contract likely to be worth more than £2.5 million?' page

  @skip-non-production @smoulder
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
