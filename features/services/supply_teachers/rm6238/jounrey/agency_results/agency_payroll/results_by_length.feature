@skip-production
Feature: Supply Teachers - Agency results - Agency payroll - Results by length

  Background: Navigate to the School postcode and worker requirements page
    Given I sign in and navigate to the start page for the 'RM6238' framework in 'supply teachers'
    And I select 'An agency who can provide my school with an individual worker'
    And I click on 'Continue'
    Then I am on the 'Do you want an agency to supply the worker?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you want the agency to manage the worker’s pay?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'School postcode and worker requirements' page
    And I select 'Teacher: (Incl. Qualified and Unqualified Teachers, Tutors)'
    And I enter 'L3 9PP' for the 'postcode'

  Scenario: The length Daily Supply has the correct rates
    And I select 'Daily Supply'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are 5 agencies
    And the listed agencies with rates and distances are:
      | BARTOLETTI, KOEPP AND NIENOW  | Southport | £27.59  | 16.4  |
      | STANTON, FADEL AND BOSCO      | Liverpool | £41.45  | 2.0   |
      | KERLUKE, TORP AND HEATHCOTE   | Liverpool | £47.94  | 0.0   |
      | EMARD AND SONS                | Liverpool | £58.35  | 2.0   |
      | FEEST-MULLER                  | Liverpool | £59.55  | 7.6   |
    And the choices used to generate the list are:
      | Looking for: Individual worker                                        |
      | Worker type: Supplied by agency                                       |
      | Payroll provider: Agency                                              |
      | Postcode: L3 9PP                                                      |
      | Search distance: 25 miles                                             |
      | Job type: Teacher: (Incl. Qualified and Unqualified Teachers, Tutors) |
      | Term: Daily Supply                                                    |

  Scenario: The Long Term (6 weeks+) has the correct rates
    And I select 'Long Term (6 weeks+)'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are 5 agencies
    And the listed agencies with rates and distances are:
      | BARTOLETTI, KOEPP AND NIENOW  | Southport | £26.21  | 16.4  |
      | STANTON, FADEL AND BOSCO      | Liverpool | £39.37  | 2.0   |
      | KERLUKE, TORP AND HEATHCOTE   | Liverpool | £45.54  | 0.0   |
      | EMARD AND SONS                | Liverpool | £55.43  | 2.0   |
      | FEEST-MULLER                  | Liverpool | £56.57  | 7.6   |
    And the choices used to generate the list are:
      | Looking for: Individual worker                                        |
      | Worker type: Supplied by agency                                       |
      | Payroll provider: Agency                                              |
      | Postcode: L3 9PP                                                      |
      | Search distance: 25 miles                                             |
      | Job type: Teacher: (Incl. Qualified and Unqualified Teachers, Tutors) |
      | Term: Long Term (6 weeks+)                                            |
