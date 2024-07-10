Feature: Supply Teachers - RM6238 - Forgot my password - Validations

  Scenario Outline: I forgot my password - email invalid
    When I go to the 'supply teachers' start page for 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page
    When I click on 'Start now'
    Then I am on the 'Sign in to find supply teachers and agency workers' page
    And I click on 'Sign in with CCS'
    And I am on the 'Sign in to your supply teachers account' page
    When I click on 'I’ve forgotten my password'
    Then I am on the 'Reset password' page
    And I enter the following details into the form:
      | Email address | <value> |
    And I click on 'Send reset email'
    Then I should see the following error messages:
      | Enter your email address in the correct format, like name@example.com |

    Examples:
      | value           |
      |                 |
      | fake@email      |
      | fake email      |
