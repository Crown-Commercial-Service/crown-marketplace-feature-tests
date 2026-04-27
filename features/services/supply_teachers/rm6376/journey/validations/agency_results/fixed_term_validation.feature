Feature: Supply Teachers - Agency results - Fixed term - Validations

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
    And I enter 'tomorrow' for the date
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to stop working?' page
    And I enter a date 0 years and 3 months into the future
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    And I enter '1234' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'L3 9PP' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are 12 agencies

  Scenario Outline: Annual salary validations - Dayly rate <dayly_rate>
    And I enter the rate '<dayly_rate>' for the supplier 'ROHAN LLC'
    Then I should see the error message 'Annual salary is invalid' for 'ROHAN LLC'
    And the following agencies have no errors:
      | GLOVER-ONDRICKA            |
      | SATTERFIELD AND SONS       |
      | NADER, CONN AND REINGER    |
      | GULGOWSKI-HUDSON           |
      | DANIEL AND SONS            |
      | ROSENBAUM-HINTZ            |
      | DARE-ROHAN                 |
      | FRITSCH-HAHN               |
      | TILLMAN-EMMERICH           |
      | GRADY AND SONS             |
      | SWANIAWSKI, CORWIN AND KUB |

    Examples:
      | dayly_rate |
      | -1         |
      | Taion      |

  Scenario: Annual salary validations - both errors at once
    And I enter the rate '-1' for the supplier 'ROHAN LLC'
    Then I should see the error message 'Annual salary is invalid' for 'ROHAN LLC'
    And I enter the rate 'Sena' for the supplier 'ROHAN LLC'
    Then I should see the error message 'Annual salary is invalid' for 'ROHAN LLC'

  Scenario: Annual salary validations - error message disapears with valid data
    And I enter the rate '-1' for the supplier 'ROHAN LLC'
    Then I should see the error message 'Annual salary is invalid' for 'ROHAN LLC'
    And I enter the rate '20000' for the supplier 'ROHAN LLC'
    And the following agencies have no errors:
      | GLOVER-ONDRICKA            |
      | SATTERFIELD AND SONS       |
      | NADER, CONN AND REINGER    |
      | GULGOWSKI-HUDSON           |
      | DANIEL AND SONS            |
      | ROSENBAUM-HINTZ            |
      | DARE-ROHAN                 |
      | FRITSCH-HAHN               |
      | TILLMAN-EMMERICH           |
      | GRADY AND SONS             |
      | SWANIAWSKI, CORWIN AND KUB |

  Scenario: Rate validations - multiple agencies
    And I enter the rate '-1' for the supplier 'ROHAN LLC'
    And I enter the rate 'Sena' for the supplier 'SATTERFIELD AND SONS'
    And I enter the rate 'L3 9PP' for the supplier 'DANIEL AND SONS'
    Then I should see the error message 'Annual salary is invalid' for 'ROHAN LLC'
    Then I should see the error message 'Annual salary is invalid' for 'SATTERFIELD AND SONS'
    Then I should see the error message 'Annual salary is invalid' for 'DANIEL AND SONS'
    And the following agencies have no errors:
      | GLOVER-ONDRICKA            |
      | NADER, CONN AND REINGER    |
      | GULGOWSKI-HUDSON           |
      | ROSENBAUM-HINTZ            |
      | DARE-ROHAN                 |
      | FRITSCH-HAHN               |
      | TILLMAN-EMMERICH           |
      | GRADY AND SONS             |
      | SWANIAWSKI, CORWIN AND KUB |
