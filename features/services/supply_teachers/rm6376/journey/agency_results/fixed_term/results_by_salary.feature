Feature: Supply Teachers - Agency results - Fixed term - Results by length

  Scenario Outline: Changing the salary of the contract changes the result values only
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
    And I enter '<annual_salary>' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'L3 9PP' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are 12 agencies
    And the listed agencies with distances, fees and lengths are:
      | ROHAN LLC                  | Liverpool | 7.6  | <annual_salary> | 3 months | <agency_1_rate>  | 26.5% |
      | GLOVER-ONDRICKA            | Liverpool | 7.6  | <annual_salary> | 3 months | <agency_2_rate>  | 28.7% |
      | SATTERFIELD AND SONS       | Liverpool | 0.0  | <annual_salary> | 3 months | <agency_3_rate>  | 37.0% |
      | NADER, CONN AND REINGER    | Liverpool | 0.0  | <annual_salary> | 3 months | <agency_4_rate>  | 37.3% |
      | GULGOWSKI-HUDSON           | Liverpool | 0.0  | <annual_salary> | 3 months | <agency_5_rate>  | 38.6% |
      | DANIEL AND SONS            | Liverpool | 2.0  | <annual_salary> | 3 months | <agency_6_rate>  | 42.7% |
      | ROSENBAUM-HINTZ            | Southport | 16.4 | <annual_salary> | 3 months | <agency_7_rate>  | 44.4% |
      | DARE-ROHAN                 | Liverpool | 2.0  | <annual_salary> | 3 months | <agency_8_rate>  | 48.7% |
      | FRITSCH-HAHN               | Southport | 16.4 | <annual_salary> | 3 months | <agency_9_rate>  | 57.2% |
      | TILLMAN-EMMERICH           | Southport | 16.4 | <annual_salary> | 3 months | <agency_10_rate> | 57.6% |
      | GRADY AND SONS             | Liverpool | 7.6  | <annual_salary> | 3 months | <agency_11_rate> | 58.0% |
      | SWANIAWSKI, CORWIN AND KUB | Liverpool | 2.0  | <annual_salary> | 3 months | <agency_12_rate> | 59.0% |
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: L3 9PP                |
      | Search distance: 25 miles       |

    Examples:
      | annual_salary | agency_1_rate | agency_2_rate | agency_3_rate | agency_4_rate | agency_5_rate | agency_6_rate | agency_7_rate | agency_8_rate | agency_9_rate | agency_10_rate | agency_11_rate | agency_12_rate |
      | 10000         | £662.50       | £717.50       | £925.00       | £932.50       | £965.00       | £1,067.50     | £1,110.00     | £1,217.50     | £1,429.75     | £1,440.00      | £1,450.00      | £1,475.00      |
      | 20000         | £1,325.00     | £1,435.00     | £1,850.00     | £1,865.00     | £1,930.00     | £2,135.00     | £2,220.00     | £2,435.00     | £2,859.50     | £2,880.00      | £2,900.00      | £2,950.00      |
      | 28000         | £1,855.00     | £2,009.00     | £2,590.00     | £2,611.00     | £2,702.00     | £2,989.00     | £3,108.00     | £3,409.00     | £4,003.30     | £4,032.00      | £4,060.00      | £4,130.00      |
      | 34781         | £2,304.24     | £2,495.54     | £3,217.24     | £3,243.33     | £3,356.37     | £3,712.87     | £3,860.69     | £4,234.59     | £4,972.81     | £5,008.46      | £5,043.25      | £5,130.20      |
      | 886422        | £58,725.46    | £63,600.78    | £81,994.04    | £82,658.85    | £85,539.72    | £94,625.55    | £98,392.84    | £107,921.88   | £126,736.19   | £127,644.77    | £128,531.19    | £130,747.25    |
