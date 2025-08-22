@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 2 - Results

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 2 - Major Projects and Complex Advice'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 2 - Major Projects and Complex Advice'
    When I check the following items:
      | Competition Law |
      | Contracts       |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '18' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | BATZ-BROWN                      | http://batz-brown.test/edris.oconner                    |
      | BLICK GROUP                     | http://blickgroup.test/kitty_zulauf                     |
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/heide.runolfsson |
      | DOUGLAS GROUP                   | http://douglasgroup.test/claudio_blick                  |
      | JOHNSON LLC                     | http://johnsonllc.example/vicente                       |
      | KUHLMAN, ORTIZ AND LOCKMAN      | http://kuhlmanortizandlockman.example/rosette_legros    |
      | KULAS, HINTZ AND DOYLE          | http://kulashintzanddoyle.example/imelda_turcotte       |
      | MURPHY LLC                      | http://murphyllc.test/charley                           |
      | NIENOW AND SONS                 | http://nienowandsons.test/vera                          |
      | REICHERT-MRAZ                   | http://reichert-mraz.test/clifford                      |
      | ROOB-WHITE                      | http://roob-white.example/tristan_turcotte              |
      | RUECKER AND SONS                | http://rueckerandsons.example/dana_kohler               |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/odell                     |
      | SMITH-DOYLE                     | http://smith-doyle.example/efren                        |
      | STARK, ADAMS AND KOZEY          | http://starkadamsandkozey.example/nelle                 |
      | TOY-ROBERTS                     | http://toy-roberts.example/shon                         |
      | WILLMS-JACOBS                   | http://willms-jacobs.example/georgiann.luettgen         |
      | WOLFF, KRAJCIK AND PROSACCO     | http://wolffkrajcikandprosacco.test/taylor_johnson      |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'Environmental Law'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '16' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | BATZ-BROWN                  | http://batz-brown.test/edris.oconner                  |
      | BLICK GROUP                 | http://blickgroup.test/kitty_zulauf                   |
      | DOUGLAS GROUP               | http://douglasgroup.test/claudio_blick                |
      | JOHNSON LLC                 | http://johnsonllc.example/vicente                     |
      | KUHLMAN, ORTIZ AND LOCKMAN  | http://kuhlmanortizandlockman.example/rosette_legros  |
      | KULAS, HINTZ AND DOYLE      | http://kulashintzanddoyle.example/imelda_turcotte     |
      | MURPHY LLC                  | http://murphyllc.test/charley                         |
      | NIENOW AND SONS             | http://nienowandsons.test/vera                        |
      | REICHERT-MRAZ               | http://reichert-mraz.test/clifford                    |
      | ROOB-WHITE                  | http://roob-white.example/tristan_turcotte            |
      | RUECKER AND SONS            | http://rueckerandsons.example/dana_kohler             |
      | SHIELDS-D'AMORE             | http://shields-damore.example/odell                   |
      | SMITH-DOYLE                 | http://smith-doyle.example/efren                      |
      | STARK, ADAMS AND KOZEY      | http://starkadamsandkozey.example/nelle               |
      | WILLMS-JACOBS               | http://willms-jacobs.example/georgiann.luettgen       |
      | WOLFF, KRAJCIK AND PROSACCO | http://wolffkrajcikandprosacco.test/taylor_johnson    |

  Scenario: Going back from a supplier
    And I click on 'BATZ-BROWN'
    Then I am on the 'BATZ-BROWN' page
    And the sub title is 'Lot 2 - Major Projects and Complex Advice'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '18' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | BATZ-BROWN                      | http://batz-brown.test/edris.oconner                    |
      | BLICK GROUP                     | http://blickgroup.test/kitty_zulauf                     |
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/heide.runolfsson |
      | DOUGLAS GROUP                   | http://douglasgroup.test/claudio_blick                  |
      | JOHNSON LLC                     | http://johnsonllc.example/vicente                       |
      | KUHLMAN, ORTIZ AND LOCKMAN      | http://kuhlmanortizandlockman.example/rosette_legros    |
      | KULAS, HINTZ AND DOYLE          | http://kulashintzanddoyle.example/imelda_turcotte       |
      | MURPHY LLC                      | http://murphyllc.test/charley                           |
      | NIENOW AND SONS                 | http://nienowandsons.test/vera                          |
      | REICHERT-MRAZ                   | http://reichert-mraz.test/clifford                      |
      | ROOB-WHITE                      | http://roob-white.example/tristan_turcotte              |
      | RUECKER AND SONS                | http://rueckerandsons.example/dana_kohler               |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/odell                     |
      | SMITH-DOYLE                     | http://smith-doyle.example/efren                        |
      | STARK, ADAMS AND KOZEY          | http://starkadamsandkozey.example/nelle                 |
      | TOY-ROBERTS                     | http://toy-roberts.example/shon                         |
      | WILLMS-JACOBS                   | http://willms-jacobs.example/georgiann.luettgen         |
      | WOLFF, KRAJCIK AND PROSACCO     | http://wolffkrajcikandprosacco.test/taylor_johnson      |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '18' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | BATZ-BROWN                      | http://batz-brown.test/edris.oconner                    |
      | BLICK GROUP                     | http://blickgroup.test/kitty_zulauf                     |
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/heide.runolfsson |
      | DOUGLAS GROUP                   | http://douglasgroup.test/claudio_blick                  |
      | JOHNSON LLC                     | http://johnsonllc.example/vicente                       |
      | KUHLMAN, ORTIZ AND LOCKMAN      | http://kuhlmanortizandlockman.example/rosette_legros    |
      | KULAS, HINTZ AND DOYLE          | http://kulashintzanddoyle.example/imelda_turcotte       |
      | MURPHY LLC                      | http://murphyllc.test/charley                           |
      | NIENOW AND SONS                 | http://nienowandsons.test/vera                          |
      | REICHERT-MRAZ                   | http://reichert-mraz.test/clifford                      |
      | ROOB-WHITE                      | http://roob-white.example/tristan_turcotte              |
      | RUECKER AND SONS                | http://rueckerandsons.example/dana_kohler               |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/odell                     |
      | SMITH-DOYLE                     | http://smith-doyle.example/efren                        |
      | STARK, ADAMS AND KOZEY          | http://starkadamsandkozey.example/nelle                 |
      | TOY-ROBERTS                     | http://toy-roberts.example/shon                         |
      | WILLMS-JACOBS                   | http://willms-jacobs.example/georgiann.luettgen         |
      | WOLFF, KRAJCIK AND PROSACCO     | http://wolffkrajcikandprosacco.test/taylor_johnson      |
