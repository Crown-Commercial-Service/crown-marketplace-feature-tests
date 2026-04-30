Feature: Supply Teachers - All agencies - suppliers - Production

  @smoulder @production
  Scenario: Can view a suppliers details
    Given I sign in and navigate to the start page for the 'RM6238' framework in 'supply teachers'
    And I select "A list of all agencies"
    And I click on 'Continue'
    Then I am on the 'Find an agency' page
    And multiple agencies are shown and I count them
    And I click on the first agency
    Then the sub title is Agency details
    And the the correct type of rates:
      | Teacher: (Incl. Qualified and Unqualified Teachers, Tutors)                           | £ |
      | Educational Support Staff: (incl. Cover Supervisor, Teaching Assistants)              | £ |
      | Senior Roles: Headteacher and Senior Leadership positions                             | £ |
      | Other Roles: (Invigilators, Admin & Clerical, IT Staff, Finance Staff, Cleaners etc.) | £ |
      | Over 12 Week Reduction                                                                | % |
      | Nominated Worker                                                                      | £ |
      | Fixed Term                                                                            | % |
    And the agency has at least one branch with the following table headings:
      | Branch        |
      | Contact name  |
      | Contact email |
      | Phone number  |
      | Address       |
