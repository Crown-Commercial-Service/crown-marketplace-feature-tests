Feature: Supply Teachers - Agency results - Agency payroll - Results by role - Production

  Scenario Outline: How the roles affects the results - Role <role>
    Given I sign in and navigate to the start page for the 'RM6376' framework in 'supply teachers'
    And I select 'An agency who can provide my school with an individual worker'
    And I click on 'Continue'
    Then I am on the 'Do you want an agency to supply the worker?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you want the agency to manage the worker’s pay?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'School postcode and worker requirements' page
    And I enter 'SW1A 1AA' for the 'postcode'
    And I select '<role>'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are multiple agencies and I count them
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: Agency        |
      | Postcode: SW1A 1AA              |
      | Search distance: 25 miles       |
      | Job type: <role>                |

    Examples:
      | role                                                                                                     |
      | STEM Teacher (Inc. Qualified Teachers, Tutors)                                                           |
      | Non-STEM Teachers (Inc. Qualified Teachers, Tutors)                                                      |
      | Educational Support Staff non SEND (Inc. Cover Supervisor, Teaching Assistants and unqualified teachers) |
      | Educational Support Staff SEND (Inc. Cover Supervisor, Teaching Assistants and unqualified teachers)     |
      | Senior Roles (Inc. Headteacher and Senior Leadership positions)                                          |
      | Facilities Management (Inc. Caretakers, site roles etc)                                                  |
      | Admin & Clerical (Inc. Office Staff, Finance Support)                                                    |
      | Other (Inc. Invigilators, cleaners)                                                                      |
