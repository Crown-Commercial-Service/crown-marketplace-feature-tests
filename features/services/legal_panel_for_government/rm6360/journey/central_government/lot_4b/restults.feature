Feature: Legal Panel for Government - Central governemnt - Lot 4b - Results

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 4b - International Trade Disputes'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Compliance with international law       |
      | Domestic law of jurisdictions for trade |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '14' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | BLICK GROUP                    | http://blickgroup.test/odis_schneider           |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN          | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/milton.klein    |
      | JOHNSON LLC                    | http://johnsonllc.example/rima                  |
      | MCCLURE, THIEL AND FRAMI       | http://mcclurethielandframi.test/darius_stanton |
      | ROBERTS-ZEMLAK                 | http://roberts-zemlak.example/armandina_funk    |
      | RUECKER AND SONS               | http://rueckerandsons.example/edmond_upton      |
      | RUSSEL AND SONS                | http://russelandsons.example/josiah             |
      | SHIELDS-D'AMORE                | http://shields-damore.example/piedad.collier    |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/corie         |
      | TOY-ROBERTS                    | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/dustin        |
      | ZIEMANN-CUMMERATA              | http://ziemann-cummerata.test/chuck.yost        |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'Trade remedies'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '18' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | BLICK GROUP                    | http://blickgroup.test/odis_schneider           |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN          | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/milton.klein    |
      | JAKUBOWSKI-ZULAUF              | http://jakubowski-zulauf.test/albert_bartoletti |
      | JOHNSON LLC                    | http://johnsonllc.example/rima                  |
      | KIEHN-O'HARA                   | http://kiehn-ohara.test/willie.murray           |
      | MAYERT AND SONS                | http://mayertandsons.example/marisa             |
      | MCCLURE, THIEL AND FRAMI       | http://mcclurethielandframi.test/darius_stanton |
      | PARKER, DIETRICH AND TREMBLAY  | http://parkerdietrichandtremblay.example/leana  |
      | ROBERTS-ZEMLAK                 | http://roberts-zemlak.example/armandina_funk    |
      | RUECKER AND SONS               | http://rueckerandsons.example/edmond_upton      |
      | RUECKER-WIZA                   | http://ruecker-wiza.test/obdulia_fahey          |
      | RUSSEL AND SONS                | http://russelandsons.example/josiah             |
      | SHIELDS-D'AMORE                | http://shields-damore.example/piedad.collier    |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/corie         |
      | TOY-ROBERTS                    | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/dustin        |

  Scenario: Going back from a supplier
    And I click on 'MCCLURE, THIEL AND FRAMI'
    Then I am on the 'MCCLURE, THIEL AND FRAMI' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '14' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | BLICK GROUP                    | http://blickgroup.test/odis_schneider           |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN          | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/milton.klein    |
      | JOHNSON LLC                    | http://johnsonllc.example/rima                  |
      | MCCLURE, THIEL AND FRAMI       | http://mcclurethielandframi.test/darius_stanton |
      | ROBERTS-ZEMLAK                 | http://roberts-zemlak.example/armandina_funk    |
      | RUECKER AND SONS               | http://rueckerandsons.example/edmond_upton      |
      | RUSSEL AND SONS                | http://russelandsons.example/josiah             |
      | SHIELDS-D'AMORE                | http://shields-damore.example/piedad.collier    |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/corie         |
      | TOY-ROBERTS                    | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/dustin        |
      | ZIEMANN-CUMMERATA              | http://ziemann-cummerata.test/chuck.yost        |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '14' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | BLICK GROUP                    | http://blickgroup.test/odis_schneider           |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN          | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/milton.klein    |
      | JOHNSON LLC                    | http://johnsonllc.example/rima                  |
      | MCCLURE, THIEL AND FRAMI       | http://mcclurethielandframi.test/darius_stanton |
      | ROBERTS-ZEMLAK                 | http://roberts-zemlak.example/armandina_funk    |
      | RUECKER AND SONS               | http://rueckerandsons.example/edmond_upton      |
      | RUSSEL AND SONS                | http://russelandsons.example/josiah             |
      | SHIELDS-D'AMORE                | http://shields-damore.example/piedad.collier    |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/corie         |
      | TOY-ROBERTS                    | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/dustin        |
      | ZIEMANN-CUMMERATA              | http://ziemann-cummerata.test/chuck.yost        |
