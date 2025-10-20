Feature: Legal Panel for Government - Non central governemnt - Lot 4c - Results with country selection - Countries

  Background: Navigate to start page and complete the journey
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
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the countries for your requirement' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    When I check the following items:
      | Malta  |
      | Malawi |
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    When I check the following items:
      | Litigation and dispute resolution for trade investment disputes |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
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

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal specialisms you need' page
    And I deselect all the items
    Given I check 'Investment dispute risk advice'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '13' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | DECKOW, KIEHN AND ORN             | http://deckowkiehnandorn.example/freddie_oberbrunner          |
      | FISHER-BASHIRIAN                  | http://fisher-bashirian.example/marielle.hermiston            |
      | HICKLE, CARTWRIGHT AND EMMERICH   | http://hicklecartwrightandemmerich.example/herschel_armstrong |
      | KSHLERIN, BRAKUS AND CHRISTIANSEN | http://kshlerinbrakusandchristiansen.test/deloise.kuhlman     |
      | LEHNER GROUP                      | http://lehnergroup.example/rueben.hane                        |
      | ROOB-WHITE                        | http://roob-white.example/kelley.luettgen                     |
      | RUECKER AND SONS                  | http://rueckerandsons.example/ricardo                         |
      | RUSSEL AND SONS                   | http://russelandsons.example/felica                           |
      | SCHMELER, KSHLERIN AND SHANAHAN   | http://schmelerkshlerinandshanahan.test/daren.jones           |
      | SHIELDS-D'AMORE                   | http://shields-damore.example/allen                           |
      | TOY-ROBERTS                       | http://toy-roberts.example/gregg_legros                       |
      | WILLMS-KOELPIN                    | http://willms-koelpin.test/juliette                           |
      | ZIEMANN-TROMP                     | http://ziemann-tromp.example/dale                             |

  Scenario: Country selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal specialisms you need' page
    Given I click on the 'Back' back link
    Then I am on the 'Select the countries for your requirement' page
    And I deselect all the items
    When I check the following items:
      | Taiwan |
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 4c - International Investment Disputes'
    When I check the following items:
      | Litigation and dispute resolution for trade investment disputes |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '13' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/freddie_oberbrunner          |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/marielle.hermiston            |
      | HICKLE, CARTWRIGHT AND EMMERICH | http://hicklecartwrightandemmerich.example/herschel_armstrong |
      | LEHNER GROUP                    | http://lehnergroup.example/rueben.hane                        |
      | MURPHY LLC                      | http://murphyllc.test/francesca_yundt                         |
      | RUECKER AND SONS                | http://rueckerandsons.example/ricardo                         |
      | RUSSEL AND SONS                 | http://russelandsons.example/felica                           |
      | SCHMELER, KSHLERIN AND SHANAHAN | http://schmelerkshlerinandshanahan.test/daren.jones           |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/allen                           |
      | TOY-ROBERTS                     | http://toy-roberts.example/gregg_legros                       |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/juliette                           |
      | WOLFF, KRAJCIK AND PROSACCO     | http://wolffkrajcikandprosacco.test/teena                     |
      | ZIEMANN-TROMP                   | http://ziemann-tromp.example/dale                             |
