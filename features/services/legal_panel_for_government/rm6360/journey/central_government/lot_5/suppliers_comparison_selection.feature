Feature: Legal Panel for Government - Non central governemnt - Lot 5 - Suppliers comparison selection

  Scenario: The correct options are available
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Your account' page
    And I click on 'Search for suppliers'
    Then I am on the 'Do you work for central government or an arms length body?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Information about your requirements' page
    And I enter '10/2024' for the requirement 'start' date
    And I enter '10/2025' for the requirement 'end' date
    And I enter '123456' for the 'requirement estimated total value'
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 5 - Rail Legal Services'
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 5 - Rail Legal Services'
    When I check the following items:
      | Pensions law |
      | Planning law |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal specialisms for government
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
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    Then I should see the following options for the lot:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | DECKOW, KIEHN AND ORN           |
      | HICKLE, CARTWRIGHT AND EMMERICH |
      | KAUTZER, PFEFFER AND SCHUMM     |
      | LEHNER GROUP                    |
      | ROMAGUERA, SCHULIST AND GRAHAM  |
      | SCHMELER, KSHLERIN AND SHANAHAN |
      | SWANIAWSKI, PREDOVIC AND GRANT  |
      | SWIFT, MANTE AND WUCKERT        |
      | WILLMS-KOELPIN                  |
      | WINTHEISER, WINDLER AND KULAS   |
      | ZIEMANN-TROMP                   |
