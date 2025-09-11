@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 5 - Suppliers comparison

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 5 - Rail Legal Services'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 5 - Rail Legal Services'
    When I check the following items:
      | Pensions law |
      | Planning law |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/alane.ratke      |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/reyna                  |
      | HICKLE, CARTWRIGHT AND EMMERICH | http://hicklecartwrightandemmerich.example/armando      |
      | KAUTZER, PFEFFER AND SCHUMM     | http://kautzerpfefferandschumm.test/deandrea            |
      | LEHNER GROUP                    | http://lehnergroup.example/erwin                        |
      | ROMAGUERA, SCHULIST AND GRAHAM  | http://romagueraschulistandgraham.test/alejandrina      |
      | SCHMELER, KSHLERIN AND SHANAHAN | http://schmelerkshlerinandshanahan.test/kurtis_mayer    |
      | SWANIAWSKI, PREDOVIC AND GRANT  | http://swaniawskipredovicandgrant.example/harold.crooks |
      | SWIFT, MANTE AND WUCKERT        | http://swiftmanteandwuckert.test/caryn                  |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/inga_dubuque                 |
      | WINTHEISER, WINDLER AND KULAS   | http://wintheiserwindlerandkulas.example/percy          |
      | ZIEMANN-TROMP                   | http://ziemann-tromp.example/sammie_denesik             |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | HICKLE, CARTWRIGHT AND EMMERICH |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison

  Scenario: The rates table is displayed for comparison
    Then I should see the rates in the comparison table:
      | Supplier                        | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant |
      | COLLIER, AUFDERHAR AND VOLKMAN  | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | DECKOW, KIEHN AND ORN           | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | HICKLE, CARTWRIGHT AND EMMERICH | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     |

  Scenario: Changing selection changes the results
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And I deselect all the items
    When I check the following items:
      | WINTHEISER, WINDLER AND KULAS |
      | ZIEMANN-TROMP                 |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '2' suppliers have been selected for comparison
    Then I should see the rates in the comparison table:
      | Supplier                      | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant |
      | WINTHEISER, WINDLER AND KULAS | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | ZIEMANN-TROMP                 | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     |

  Scenario: Back to results
    When I click on 'Back to results'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/alane.ratke      |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/reyna                  |
      | HICKLE, CARTWRIGHT AND EMMERICH | http://hicklecartwrightandemmerich.example/armando      |
      | KAUTZER, PFEFFER AND SCHUMM     | http://kautzerpfefferandschumm.test/deandrea            |
      | LEHNER GROUP                    | http://lehnergroup.example/erwin                        |
      | ROMAGUERA, SCHULIST AND GRAHAM  | http://romagueraschulistandgraham.test/alejandrina      |
      | SCHMELER, KSHLERIN AND SHANAHAN | http://schmelerkshlerinandshanahan.test/kurtis_mayer    |
      | SWANIAWSKI, PREDOVIC AND GRANT  | http://swaniawskipredovicandgrant.example/harold.crooks |
      | SWIFT, MANTE AND WUCKERT        | http://swiftmanteandwuckert.test/caryn                  |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/inga_dubuque                 |
      | WINTHEISER, WINDLER AND KULAS   | http://wintheiserwindlerandkulas.example/percy          |
      | ZIEMANN-TROMP                   | http://ziemann-tromp.example/sammie_denesik             |
