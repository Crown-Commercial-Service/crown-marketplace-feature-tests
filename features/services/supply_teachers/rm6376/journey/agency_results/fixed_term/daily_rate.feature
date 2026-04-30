Feature: Supply Teachers - Agency results - Fixed term - Daily rate

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
    And I enter a date 2 and a half months into the future
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    And I enter '28000' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'L3 9PP' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page

  Scenario Outline: Using the calculator for ROHAN LLC
    Then for the agency 'ROHAN LLC' I should see '£1,545.83' for the 'finders fee'
    And I enter the rate '<annual_salary>' for the supplier 'ROHAN LLC'
    Then for the agency 'ROHAN LLC' I should see '<finders_fee>' for the 'finders fee'

    Examples:
      | annual_salary | finders_fee |
      | 10000         | £552.08     |
      | 20000         | £1104.17    |
      | 28000         | £1,545.83   |
      | 41036         | £2265.53    |
      | 819320        | £45233.29   |

  Scenario Outline: Using the calculator for GLOVER-ONDRICKA
    Then for the agency 'GLOVER-ONDRICKA' I should see '£1,674.17' for the 'finders fee'
    And I enter the rate '<annual_salary>' for the supplier 'GLOVER-ONDRICKA'
    Then for the agency 'GLOVER-ONDRICKA' I should see '<finders_fee>' for the 'finders fee'

    Examples:
      | annual_salary | finders_fee |
      | 10000         | £597.92     |
      | 20000         | £1195.83    |
      | 28000         | £1,674.17   |
      | 40142         | £2400.16    |
      | 9104123       | £544350.69  |

  Scenario: When nothing is entered the result is blank and the colours are muted
    Then for the agency 'SATTERFIELD AND SONS' I should see '£2,158.33' for the 'finders fee'
    And I enter the rate '' for the supplier 'SATTERFIELD AND SONS'
    Then for the agency 'SATTERFIELD AND SONS' I should see '' for the 'finders fee'
    And the results for 'SATTERFIELD AND SONS' are muted
