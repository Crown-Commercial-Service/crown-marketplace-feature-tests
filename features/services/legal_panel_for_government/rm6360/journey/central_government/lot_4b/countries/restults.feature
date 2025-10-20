Feature: Legal Panel for Government - Non central governemnt - Lot 4b - Results with country selection - Countries

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
    And I select 'Lot 4b - International Trade Disputes'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the countries for your requirement' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Algeria        |
      | Cayman Islands |
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Wider trading arrangements |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | BLICK GROUP                    | http://blickgroup.test/odis_schneider          |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/emile   |
      | DECKOW, KIEHN AND ORN          | http://deckowkiehnandorn.example/manual        |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/milton.klein   |
      | JOHNSON LLC                    | http://johnsonllc.example/rima                 |
      | PARKER, DIETRICH AND TREMBLAY  | http://parkerdietrichandtremblay.example/leana |
      | RUECKER AND SONS               | http://rueckerandsons.example/edmond_upton     |
      | RUSSEL AND SONS                | http://russelandsons.example/josiah            |
      | SHIELDS-D'AMORE                | http://shields-damore.example/piedad.collier   |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/corie        |
      | TOY-ROBERTS                    | http://toy-roberts.example/tiffanie_bruen      |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/dustin       |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal specialisms you need' page
    And I deselect all the items
    Given I check 'Compliance with international law'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '13' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | BLICK GROUP                    | http://blickgroup.test/odis_schneider           |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN          | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/milton.klein    |
      | JOHNSON LLC                    | http://johnsonllc.example/rima                  |
      | MCCLURE, THIEL AND FRAMI       | http://mcclurethielandframi.test/darius_stanton |
      | RUECKER AND SONS               | http://rueckerandsons.example/edmond_upton      |
      | RUSSEL AND SONS                | http://russelandsons.example/josiah             |
      | SHIELDS-D'AMORE                | http://shields-damore.example/piedad.collier    |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/corie         |
      | TOY-ROBERTS                    | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/dustin        |
      | ZIEMANN-CUMMERATA              | http://ziemann-cummerata.test/chuck.yost        |

  Scenario: Country selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal specialisms you need' page
    Given I click on the 'Back' back link
    Then I am on the 'Select the countries for your requirement' page
    And I deselect all the items
    When I check the following items:
      | Armenia |
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Wider trading arrangements |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | BLICK GROUP                    | http://blickgroup.test/odis_schneider        |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/emile |
      | DECKOW, KIEHN AND ORN          | http://deckowkiehnandorn.example/manual      |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/milton.klein |
      | JOHNSON LLC                    | http://johnsonllc.example/rima               |
      | RUECKER AND SONS               | http://rueckerandsons.example/edmond_upton   |
      | RUSSEL AND SONS                | http://russelandsons.example/josiah          |
      | SHIELDS-D'AMORE                | http://shields-damore.example/piedad.collier |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/corie      |
      | TOY-ROBERTS                    | http://toy-roberts.example/tiffanie_bruen    |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/dustin     |
