Feature: Supply Teachers - All agencies - suppliers - Production

  @smoulder @production
  Scenario: Can view a suppliers details
    Given I sign in and navigate to the start page for the 'RM6376' framework in 'supply teachers'
    And I select "A list of all agencies"
    And I click on 'Continue'
    Then I am on the 'Find an agency' page
    And multiple agencies are shown and I count them
    And I click on the first agency
    Then the sub title is Agency details
    And the the correct type of rates:
      | STEM Teacher (Inc. Qualified Teachers, Tutors)                                                           | £ |
      | Non-STEM Teachers (Inc. Qualified Teachers, Tutors)                                                      | £ |
      | Educational Support Staff non SEND (Inc. Cover Supervisor, Teaching Assistants and unqualified teachers) | £ |
      | Educational Support Staff SEND (Inc. Cover Supervisor, Teaching Assistants and unqualified teachers)     | £ |
      | Senior Roles (Inc. Headteacher and Senior Leadership positions)                                          | £ |
      | Facilities Management (Inc. Caretakers, site roles etc)                                                  | £ |
      | Admin & Clerical (Inc. Office Staff, Finance Support)                                                    | £ |
      | Other (Inc. Invigilators, cleaners)                                                                      | £ |
      | Over 12 Week Reduction                                                                                   | % |
      | Nominated Workers                                                                                        | % |
      | Fixed Term / Permanent Roles (on School Payroll)                                                         | % |
    And the agency has at least one branch with the following table headings:
      | Branch        |
      | Contact name  |
      | Contact email |
      | Phone number  |
      | Address       |
