@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 4b - Results with country selection

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
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the countries for your requirement' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Algeria         |
      | Cayman Islands  |
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Wider trading arrangements  |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '8' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/milton.klein    |
      | PARKER, DIETRICH AND TREMBLAY   | http://parkerdietrichandtremblay.example/leana  |
      | RUECKER AND SONS                | http://rueckerandsons.example/edmond_upton      |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/piedad.collier    |
      | TOY-ROBERTS                     | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/dustin        |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'Compliance with international law'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '9' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/milton.klein    |
      | MCCLURE, THIEL AND FRAMI        | http://mcclurethielandframi.test/darius_stanton |
      | RUECKER AND SONS                | http://rueckerandsons.example/edmond_upton      |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/piedad.collier    |
      | TOY-ROBERTS                     | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/dustin        |
      | ZIEMANN-CUMMERATA               | http://ziemann-cummerata.test/chuck.yost        |

  Scenario: Country selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    Given I click on the 'Back' back link
     Then I am on the 'Select the countries for your requirement' page
    And I deselect all the items
    When I check the following items:
      | American Samoa |
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Wider trading arrangements  |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '7' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/emile  |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/manual       |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/milton.klein  |
      | RUECKER AND SONS                | http://rueckerandsons.example/edmond_upton    |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/piedad.collier  |
      | TOY-ROBERTS                     | http://toy-roberts.example/tiffanie_bruen     |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/dustin      |

  Scenario: Going back from a supplier
    And I click on 'FISHER-BASHIRIAN'
    Then I am on the 'FISHER-BASHIRIAN' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '8' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/milton.klein    |
      | PARKER, DIETRICH AND TREMBLAY   | http://parkerdietrichandtremblay.example/leana  |
      | RUECKER AND SONS                | http://rueckerandsons.example/edmond_upton      |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/piedad.collier    |
      | TOY-ROBERTS                     | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/dustin        |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '8' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/milton.klein    |
      | PARKER, DIETRICH AND TREMBLAY   | http://parkerdietrichandtremblay.example/leana  |
      | RUECKER AND SONS                | http://rueckerandsons.example/edmond_upton      |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/piedad.collier    |
      | TOY-ROBERTS                     | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/dustin        |
