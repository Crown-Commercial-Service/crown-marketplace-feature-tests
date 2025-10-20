Feature: Legal Panel for Government - Non central governemnt - Lot 4c - Results

  Scenario: Service selection changes the results
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
    And I select 'Lot 4c - International Investment Disputes'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    When I check the following items:
      | Domestic law of jurisdictions for trade |
      | International arbitral awards           |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | CRUICKSHANK, WISOKY AND HARBER  | http://cruickshankwisokyandharber.example/denisse             |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/freddie_oberbrunner          |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/marielle.hermiston            |
      | HICKLE, CARTWRIGHT AND EMMERICH | http://hicklecartwrightandemmerich.example/herschel_armstrong |
      | LEHNER GROUP                    | http://lehnergroup.example/rueben.hane                        |
      | RUECKER AND SONS                | http://rueckerandsons.example/ricardo                         |
      | RUSSEL AND SONS                 | http://russelandsons.example/felica                           |
      | SCHMELER, KSHLERIN AND SHANAHAN | http://schmelerkshlerinandshanahan.test/daren.jones           |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/allen                           |
      | TOY-ROBERTS                     | http://toy-roberts.example/gregg_legros                       |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/juliette                           |
      | ZIEMANN-TROMP                   | http://ziemann-tromp.example/dale                             |
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal specialisms you need' page
    And I deselect all the items
    Given I check 'Investment dispute risk advice'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '16' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | DECKOW, KIEHN AND ORN             | http://deckowkiehnandorn.example/freddie_oberbrunner          |
      | DOUGLAS GROUP                     | http://douglasgroup.test/mitchel                              |
      | FISHER-BASHIRIAN                  | http://fisher-bashirian.example/marielle.hermiston            |
      | HICKLE, CARTWRIGHT AND EMMERICH   | http://hicklecartwrightandemmerich.example/herschel_armstrong |
      | KSHLERIN, BRAKUS AND CHRISTIANSEN | http://kshlerinbrakusandchristiansen.test/deloise.kuhlman     |
      | KULAS, HINTZ AND DOYLE            | http://kulashintzanddoyle.example/lynna.herman                |
      | LEHNER GROUP                      | http://lehnergroup.example/rueben.hane                        |
      | NIENOW AND SONS                   | http://nienowandsons.test/andrea                              |
      | ROOB-WHITE                        | http://roob-white.example/kelley.luettgen                     |
      | RUECKER AND SONS                  | http://rueckerandsons.example/ricardo                         |
      | RUSSEL AND SONS                   | http://russelandsons.example/felica                           |
      | SCHMELER, KSHLERIN AND SHANAHAN   | http://schmelerkshlerinandshanahan.test/daren.jones           |
      | SHIELDS-D'AMORE                   | http://shields-damore.example/allen                           |
      | TOY-ROBERTS                       | http://toy-roberts.example/gregg_legros                       |
      | WILLMS-KOELPIN                    | http://willms-koelpin.test/juliette                           |
      | ZIEMANN-TROMP                     | http://ziemann-tromp.example/dale                             |
