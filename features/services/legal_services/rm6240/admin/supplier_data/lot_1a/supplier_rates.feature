Feature: Legal services - Admin - Supplier lot data - Lot 1a - Rates

  Background: Go to rates
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'HALEY-SCHOEN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'HALEY-SCHOEN'
    And I click on 'View rates' for the lot 'Lot 1a - Full service provision (England and Wales)'
    Then I am on the 'Lot 1a - Full service provision View rates' page
    And the caption is 'HALEY-SCHOEN'

  Scenario: Rates
    And the rates in the table are:
      | Position                                           | Hourly |
      | Partner                                            | £220   |
      | Senior Solicitor, Senior Associate                 | £195   |
      | Solicitor, Associate                               | £170   |
      | NQ Solicitor/Associate, Junior Solicitor/Associate | £155   |
      | Trainee                                            | £100   |
      | Paralegal, Legal Assistant                         | £90    |
      | LMP (Legal project manager)                        | £95    |

  Scenario Outline: Rates validation
    Given I click on 'Change (Rates for the supplier)'
    Then I am on the 'Edit rates' page
    And the caption is 'HALEY-SCHOEN'
    Then I enter the following rates into the form:
      | Solicitor, Associate | <rate> |
    And I click on 'Save and return'
    Then I am on the 'Edit rates' page
    And I should see the following error messages:
      | <error_message> |

    Examples:
      | rate        | error_message                                            |
      |             | You must enter a value for this rate                     |
      | Not a rate  | The rate must be formatted as money, for example £350.50 |
      | 55.5        | The rate must be formatted as money, for example £350.50 |
      | 10000000.00 | The rate must be less than £1,000,000                    |
