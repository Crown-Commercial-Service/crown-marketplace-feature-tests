Feature: Supply Teachers - Agency results - Fixed term - Agencies

  Background: Navigate to the Agency results page
    Given I sign in and navigate to the start page for the 'RM6376' framework in 'supply teachers'
    And I select 'An agency who can provide my school with an individual worker'
    And I click on 'Continue'
    Then I am on the 'Do you want an agency to supply the worker?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you want the agency to manage the worker’s pay?' page
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to start?' page
    And I enter 'today' for the date
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to stop working?' page
    And I enter a date 0 years and 3 months into the future
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    And I enter '28000' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'SW1A 1AA' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page

  Scenario: The agency details shown are correct
    And there are 12 agencies
    And the listed agencies with distances, fees and lengths are:
      | ROHAN LLC                  | London     | 0.0 | 28000 | 3 months | £1,855.00 | 26.5% |
      | GLOVER-ONDRICKA            | London     | 0.0 | 28000 | 3 months | £2,009.00 | 28.7% |
      | ROOB, CORWIN AND DICKI     | London     | 5.2 | 28000 | 3 months | £2,366.00 | 33.8% |
      | DANIEL AND SONS            | Twickenham | 9.1 | 28000 | 3 months | £2,989.00 | 42.7% |
      | TREMBLAY-WEST              | London     | 5.2 | 28000 | 3 months | £3,073.00 | 43.9% |
      | ROSENBAUM-HINTZ            | London     | 6.0 | 28000 | 3 months | £3,108.00 | 44.4% |
      | HEANEY GROUP               | London     | 5.2 | 28000 | 3 months | £3,304.00 | 47.2% |
      | DARE-ROHAN                 | Twickenham | 9.1 | 28000 | 3 months | £3,409.00 | 48.7% |
      | FRITSCH-HAHN               | London     | 6.0 | 28000 | 3 months | £4,003.30 | 57.2% |
      | TILLMAN-EMMERICH           | London     | 6.0 | 28000 | 3 months | £4,032.00 | 57.6% |
      | GRADY AND SONS             | London     | 0.0 | 28000 | 3 months | £4,060.00 | 58.0% |
      | SWANIAWSKI, CORWIN AND KUB | Twickenham | 9.1 | 28000 | 3 months | £4,130.00 | 59.0% |

  Scenario Outline: I can naviagte to the agency details
    Given I click on '<agency_name>'
    Then I am on the '<agency_name>' page
    And the sub title is Agency details
    And the 'Branch' is '<branch>'

    Examples:
      | agency_name                | branch     |
      | ROHAN LLC                  | London     |
      | ROSENBAUM-HINTZ            | London     |
      | SWANIAWSKI, CORWIN AND KUB | Twickenham |

  @file-download
  Scenario: I can download the shortlist document
    And I click on 'Download shortlist of agencies'
    Then the file 'Shortlist of agencies' is downloaded with the 'xlsx' extension

  Scenario: Back buttons work
    Given I click on 'GLOVER-ONDRICKA'
    Then I am on the 'GLOVER-ONDRICKA' page
    And the sub title is Agency details
    And the 'Branch' is 'London'
    Then I click on 'Back'
    Then I am on the 'Agency results' page
    Then I click on 'Back'
    Then I am on the 'What is your school’s postcode?' page
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are 12 agencies
    And the listed agencies for agency results are:
      | ROHAN LLC                  | London     |
      | GLOVER-ONDRICKA            | London     |
      | ROOB, CORWIN AND DICKI     | London     |
      | DANIEL AND SONS            | Twickenham |
      | TREMBLAY-WEST              | London     |
      | ROSENBAUM-HINTZ            | London     |
      | HEANEY GROUP               | London     |
      | DARE-ROHAN                 | Twickenham |
      | FRITSCH-HAHN               | London     |
      | TILLMAN-EMMERICH           | London     |
      | GRADY AND SONS             | London     |
      | SWANIAWSKI, CORWIN AND KUB | Twickenham |
    Then I click on 'Back'
    And I am on the 'What is your school’s postcode?' page
    Then I click on 'Back'
    And I am on the "What would the employee's annual salary be?" page
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    Then I click on 'Back'
    And I am on the "What would the employee's annual salary be?" page
    Then I click on 'Back'
    And I am on the 'What date do you want the employee to stop working?' page
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    Then I click on 'Back'
    And I am on the 'What date do you want the employee to stop working?' page
    Then I click on 'Back'
    And I am on the 'What date do you want the employee to start?' page
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to stop working?' page
    Then I click on 'Back'
    And I am on the 'What date do you want the employee to start?' page
    Then I click on 'Back'
    And I am on the 'Do you want the agency to manage the worker’s pay?' page
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to start?' page
    Then I click on 'Back'
    And I am on the 'Do you want the agency to manage the worker’s pay?' page
    Then I click on 'Back'
    And I am on the 'Do you want an agency to supply the worker?' page
    And I click on 'Continue'
    Then I am on the 'Do you want the agency to manage the worker’s pay?' page
    Then I click on 'Back'
    And I am on the 'Do you want an agency to supply the worker?' page
    And I click on 'Continue'
    Then I am on the 'Do you want the agency to manage the worker’s pay?' page
    Then I click on 'Back'
    And I am on the 'Do you want an agency to supply the worker?' page
    Then I click on 'Back'
    And I am on the 'What is your school looking for?' page
    And I click on 'Continue'
    And I am on the 'Do you want an agency to supply the worker?' page
