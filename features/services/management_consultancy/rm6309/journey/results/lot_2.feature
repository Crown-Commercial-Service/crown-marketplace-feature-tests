@skip-production
Feature: Management Consultancy - Lot 2 - Strategy and Policy - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6309' framework in 'management consultancy'
    Given I select 'Lot 2 - Strategy and Policy'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF4 lot 2 - Strategy and Policy'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '4' companies can provide consultants
    And the selected suppliers are:
      | CRONA-ZIEME       |
      | LEDNER-MAYER      |
      | LUEILWITZ-WAELCHI |
      | WILLIAMSON GROUP  |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check 'Business case development'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '32' companies can provide consultants
    And the selected suppliers are:
      | BASHIRIAN, BODE AND STEUBER    |
      | BAYER-KEMMER                   |
      | BOEHM-JENKINS                  |
      | BRUEN-WITTING                  |
      | CRONA-ZIEME                    |
      | DURGAN AND SONS                |
      | FARRELL AND SONS               |
      | FISHER-DECKOW                  |
      | GRAHAM, BREKKE AND HAMILL      |
      | GRIMES-KUHLMAN                 |
      | GUTMANN, LEMKE AND JOHNSTON    |
      | HAAG AND SONS                  |
      | HARTMANN-LEGROS                |
      | HARVEY-COLLINS                 |
      | HILLL, HICKLE AND BODE         |
      | HIRTHE INC                     |
      | KUPHAL, JOHNSTON AND SCHROEDER |
      | LEBSACK, KOVACEK AND GOYETTE   |
      | LEDNER-MAYER                   |
      | LUEILWITZ-WAELCHI              |
      | NICOLAS AND SONS               |
      | PARISIAN AND SONS              |
      | PFEFFER INC                    |
      | ROBEL GROUP                    |
      | RODRIGUEZ AND SONS             |
    And I click on 'Next'
    Then I am on the 'Supplier results' page
    And I should see that '32' companies can provide consultants
    And the selected suppliers are:
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG |
      | SCHILLER-SCHAMBERGER                     |
      | SCHMIDT, MARQUARDT AND HAMMES            |
      | SCHUPPE INC                              |
      | SMITH AND SONS                           |
      | WEBER GROUP                              |
      | WILLIAMSON GROUP                         |
    And I click on 'Previous'
    Then I am on the 'Supplier results' page
    And I should see that '32' companies can provide consultants
    And the selected suppliers are:
      | BASHIRIAN, BODE AND STEUBER    |
      | BAYER-KEMMER                   |
      | BOEHM-JENKINS                  |
      | BRUEN-WITTING                  |
      | CRONA-ZIEME                    |
      | DURGAN AND SONS                |
      | FARRELL AND SONS               |
      | FISHER-DECKOW                  |
      | GRAHAM, BREKKE AND HAMILL      |
      | GRIMES-KUHLMAN                 |
      | GUTMANN, LEMKE AND JOHNSTON    |
      | HAAG AND SONS                  |
      | HARTMANN-LEGROS                |
      | HARVEY-COLLINS                 |
      | HILLL, HICKLE AND BODE         |
      | HIRTHE INC                     |
      | KUPHAL, JOHNSTON AND SCHROEDER |
      | LEBSACK, KOVACEK AND GOYETTE   |
      | LEDNER-MAYER                   |
      | LUEILWITZ-WAELCHI              |
      | NICOLAS AND SONS               |
      | PARISIAN AND SONS              |
      | PFEFFER INC                    |
      | ROBEL GROUP                    |
      | RODRIGUEZ AND SONS             |

  Scenario: Going back from a supplier
    And I click on 'WILLIAMSON GROUP'
    Then I am on the 'WILLIAMSON GROUP' page
    And the sub title is 'MCF4 lot 2 - Strategy and Policy'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '4' companies can provide consultants
    And the selected suppliers are:
      | CRONA-ZIEME       |
      | LEDNER-MAYER      |
      | LUEILWITZ-WAELCHI |
      | WILLIAMSON GROUP  |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '4' companies can provide consultants
    And the selected suppliers are:
      | CRONA-ZIEME       |
      | LEDNER-MAYER      |
      | LUEILWITZ-WAELCHI |
      | WILLIAMSON GROUP  |
