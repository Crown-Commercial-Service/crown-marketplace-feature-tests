@skip-production
Feature: Management Consultancy - Lot 1 - Business - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6309' framework in 'management consultancy'
    Given I select 'Lot 1 - Business'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF4 lot 1 - Business'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '22' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE                |
      | BASHIRIAN, BODE AND STEUBER              |
      | BOGISICH, BAUMBACH AND KERTZMANN         |
      | BRUEN-WITTING                            |
      | CONSIDINE GROUP                          |
      | CRONA-ZIEME                              |
      | DAVIS, HALEY AND HAND                    |
      | DIBBERT-ANKUNDING                        |
      | ERNSER GROUP                             |
      | HERMANN-WEHNER                           |
      | HILLL, HICKLE AND BODE                   |
      | JOHNSON GROUP                            |
      | KOELPIN LLC                              |
      | KOZEY-KEELING                            |
      | LANGWORTH, HETTINGER AND KUNDE           |
      | LEDNER-MAYER                             |
      | ORTIZ, STREICH AND HEANEY                |
      | PARKER INC                               |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG |
      | SCHILLER-SCHAMBERGER                     |
      | TORP GROUP                               |
      | WILLIAMSON GROUP                         |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check the following items:
      | Business case development                    |
      | Business consultancy                         |
      | Business policy development and/or appraisal |
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '33' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE        |
      | BASHIRIAN, BODE AND STEUBER      |
      | BERGNAUM LLC                     |
      | BOGISICH, BAUMBACH AND KERTZMANN |
      | BRUEN-WITTING                    |
      | CASSIN-HAAG                      |
      | CONSIDINE GROUP                  |
      | CRONA-ZIEME                      |
      | DAVIS, HALEY AND HAND            |
      | DIBBERT-ANKUNDING                |
      | DURGAN AND SONS                  |
      | ERNSER GROUP                     |
      | HAAG, SATTERFIELD AND MERTZ      |
      | HERMANN-WEHNER                   |
      | HILLL, HICKLE AND BODE           |
      | HOPPE, MANTE AND METZ            |
      | JOHNSON GROUP                    |
      | KEMMER, LEFFLER AND LEGROS       |
      | KOELPIN LLC                      |
      | KOZEY-KEELING                    |
      | KRAJCIK-ZIEMANN                  |
      | LANGWORTH, HETTINGER AND KUNDE   |
      | LEDNER-MAYER                     |
      | ORTIZ, STREICH AND HEANEY        |
      | PARKER INC                       |
    And I click on 'Next'
    Then I am on the 'Supplier results' page
    And I should see that '33' companies can provide consultants
    And the selected suppliers are:
      | ROLFSON-WEBER                            |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG |
      | SCHILLER-SCHAMBERGER                     |
      | SCHOWALTER LLC                           |
      | SIMONIS-FARRELL                          |
      | TORP GROUP                               |
      | WILL-FRIESEN                             |
      | WILLIAMSON GROUP                         |
    And I click on 'Previous'
    Then I am on the 'Supplier results' page
    And I should see that '33' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE        |
      | BASHIRIAN, BODE AND STEUBER      |
      | BERGNAUM LLC                     |
      | BOGISICH, BAUMBACH AND KERTZMANN |
      | BRUEN-WITTING                    |
      | CASSIN-HAAG                      |
      | CONSIDINE GROUP                  |
      | CRONA-ZIEME                      |
      | DAVIS, HALEY AND HAND            |
      | DIBBERT-ANKUNDING                |
      | DURGAN AND SONS                  |
      | ERNSER GROUP                     |
      | HAAG, SATTERFIELD AND MERTZ      |
      | HERMANN-WEHNER                   |
      | HILLL, HICKLE AND BODE           |
      | HOPPE, MANTE AND METZ            |
      | JOHNSON GROUP                    |
      | KEMMER, LEFFLER AND LEGROS       |
      | KOELPIN LLC                      |
      | KOZEY-KEELING                    |
      | KRAJCIK-ZIEMANN                  |
      | LANGWORTH, HETTINGER AND KUNDE   |
      | LEDNER-MAYER                     |
      | ORTIZ, STREICH AND HEANEY        |
      | PARKER INC                       |

  Scenario: Going back from a supplier
    And I click on 'DIBBERT-ANKUNDING'
    Then I am on the 'DIBBERT-ANKUNDING' page
    And the sub title is 'MCF4 lot 1 - Business'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '22' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE                |
      | BASHIRIAN, BODE AND STEUBER              |
      | BOGISICH, BAUMBACH AND KERTZMANN         |
      | BRUEN-WITTING                            |
      | CONSIDINE GROUP                          |
      | CRONA-ZIEME                              |
      | DAVIS, HALEY AND HAND                    |
      | DIBBERT-ANKUNDING                        |
      | ERNSER GROUP                             |
      | HERMANN-WEHNER                           |
      | HILLL, HICKLE AND BODE                   |
      | JOHNSON GROUP                            |
      | KOELPIN LLC                              |
      | KOZEY-KEELING                            |
      | LANGWORTH, HETTINGER AND KUNDE           |
      | LEDNER-MAYER                             |
      | ORTIZ, STREICH AND HEANEY                |
      | PARKER INC                               |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG |
      | SCHILLER-SCHAMBERGER                     |
      | TORP GROUP                               |
      | WILLIAMSON GROUP                         |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '22' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE                |
      | BASHIRIAN, BODE AND STEUBER              |
      | BOGISICH, BAUMBACH AND KERTZMANN         |
      | BRUEN-WITTING                            |
      | CONSIDINE GROUP                          |
      | CRONA-ZIEME                              |
      | DAVIS, HALEY AND HAND                    |
      | DIBBERT-ANKUNDING                        |
      | ERNSER GROUP                             |
      | HERMANN-WEHNER                           |
      | HILLL, HICKLE AND BODE                   |
      | JOHNSON GROUP                            |
      | KOELPIN LLC                              |
      | KOZEY-KEELING                            |
      | LANGWORTH, HETTINGER AND KUNDE           |
      | LEDNER-MAYER                             |
      | ORTIZ, STREICH AND HEANEY                |
      | PARKER INC                               |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG |
      | SCHILLER-SCHAMBERGER                     |
      | TORP GROUP                               |
      | WILLIAMSON GROUP                         |
