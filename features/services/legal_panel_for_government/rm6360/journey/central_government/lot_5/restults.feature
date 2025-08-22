@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 5 - Results

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
      | Pensions law  |
      | Planning law  |
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

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'Insurance law'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '15' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/alane.ratke      |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/reyna                  |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/aaron.swaniawski        |
      | HICKLE, CARTWRIGHT AND EMMERICH | http://hicklecartwrightandemmerich.example/armando      |
      | JOHNSON LLC                     | http://johnsonllc.example/robt.conroy                   |
      | KAUTZER, PFEFFER AND SCHUMM     | http://kautzerpfefferandschumm.test/deandrea            |
      | LEHNER GROUP                    | http://lehnergroup.example/erwin                        |
      | ROMAGUERA, SCHULIST AND GRAHAM  | http://romagueraschulistandgraham.test/alejandrina      |
      | SCHMELER, KSHLERIN AND SHANAHAN | http://schmelerkshlerinandshanahan.test/kurtis_mayer    |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/shay.metz                 |
      | SWANIAWSKI, PREDOVIC AND GRANT  | http://swaniawskipredovicandgrant.example/harold.crooks |
      | SWIFT, MANTE AND WUCKERT        | http://swiftmanteandwuckert.test/caryn                  |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/inga_dubuque                 |
      | WINTHEISER, WINDLER AND KULAS   | http://wintheiserwindlerandkulas.example/percy          |
      | ZIEMANN-TROMP                   | http://ziemann-tromp.example/sammie_denesik             |

  Scenario: Going back from a supplier
    And I click on 'LEHNER GROUP'
    Then I am on the 'LEHNER GROUP' page
    And the sub title is 'Lot 5 - Rail Legal Services'
    And I click on the 'Back' back link
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

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
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
