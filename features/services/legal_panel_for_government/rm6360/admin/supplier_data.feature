Feature: Legal Panel for Government - Admin - Supplier data pages

  Background: Navigate to supplier data page
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page

  Scenario: Supplier data page
    Then I should see the following suppliers on the page:
      | ARMSTRONG GROUP                   |
      | BATZ-BROWN                        |
      | BLICK GROUP                       |
      | COLLIER, AUFDERHAR AND VOLKMAN    |
      | CRUICKSHANK GROUP                 |
      | CRUICKSHANK, WISOKY AND HARBER    |
      | DECKOW, ALTENWERTH AND HALEY      |
      | DECKOW, KIEHN AND ORN             |
      | DONNELLY-RIPPIN                   |
      | DOUGLAS GROUP                     |
      | EMARD LLC                         |
      | FISHER-BASHIRIAN                  |
      | HAAG AND SONS                     |
      | HICKLE, CARTWRIGHT AND EMMERICH   |
      | JAKUBOWSKI-ZULAUF                 |
      | JOHNSON LLC                       |
      | KASSULKE, RITCHIE AND KOCH        |
      | KAUTZER, PFEFFER AND SCHUMM       |
      | KESSLER INC                       |
      | KIEHN-O'HARA                      |
      | KILBACK-ERNSER                    |
      | KSHLERIN, BRAKUS AND CHRISTIANSEN |
      | KUHLMAN-MARVIN                    |
      | KUHLMAN, ORTIZ AND LOCKMAN        |
      | KULAS, HINTZ AND DOYLE            |
      | LARSON, KLEIN AND WUNSCH          |
      | LEHNER GROUP                      |
      | MAYERT AND SONS                   |
      | MCCLURE, THIEL AND FRAMI          |
      | MOSCISKI AND SONS                 |
      | MURPHY LLC                        |
      | NIENOW AND SONS                   |
      | O'CONNER, FUNK AND COLLINS        |
      | PAGAC AND SONS                    |
      | PARKER, DIETRICH AND TREMBLAY     |
      | PREDOVIC, HAYES AND SCHOEN        |
      | REICHERT-MRAZ                     |
      | ROBERTS-ZEMLAK                    |
      | ROMAGUERA, SCHULIST AND GRAHAM    |
      | ROOB-WHITE                        |
      | RUECKER AND SONS                  |
      | RUECKER-WIZA                      |
      | RUSSEL AND SONS                   |
      | SCHMELER, KSHLERIN AND SHANAHAN   |
      | SCHOWALTER GROUP                  |
      | SHIELDS-D'AMORE                   |
      | SMITH-DOYLE                       |
      | STARK, ADAMS AND KOZEY            |
      | SWANIAWSKI, PREDOVIC AND GRANT    |
      | SWIFT, MANTE AND WUCKERT          |
      | THIEL, CHAMPLIN AND MCDERMOTT     |
      | TOY-ROBERTS                       |
      | UPTON INC                         |
      | WALSH-BRAKUS                      |
      | WELCH, PAGAC AND SWIFT            |
      | WILLMS-JACOBS                     |
      | WILLMS-KOELPIN                    |
      | WINTHEISER, WINDLER AND KULAS     |
      | WOLFF, KRAJCIK AND PROSACCO       |
      | ZIEMANN-CUMMERATA                 |
      | ZIEMANN-TROMP                     |
    And I enter "ha" for the supplier search
    Then I should see the following suppliers on the page:
      | COLLIER, AUFDERHAR AND VOLKMAN  |
      | CRUICKSHANK GROUP               |
      | CRUICKSHANK, WISOKY AND HARBER  |
      | DECKOW, ALTENWERTH AND HALEY    |
      | HAAG AND SONS                   |
      | KIEHN-O'HARA                    |
      | PREDOVIC, HAYES AND SCHOEN      |
      | ROMAGUERA, SCHULIST AND GRAHAM  |
      | SCHMELER, KSHLERIN AND SHANAHAN |
      | THIEL, CHAMPLIN AND MCDERMOTT   |
    And I enter "" for the supplier search
    Then I should see the following suppliers on the page:
      | ARMSTRONG GROUP                   |
      | BATZ-BROWN                        |
      | BLICK GROUP                       |
      | COLLIER, AUFDERHAR AND VOLKMAN    |
      | CRUICKSHANK GROUP                 |
      | CRUICKSHANK, WISOKY AND HARBER    |
      | DECKOW, ALTENWERTH AND HALEY      |
      | DECKOW, KIEHN AND ORN             |
      | DONNELLY-RIPPIN                   |
      | DOUGLAS GROUP                     |
      | EMARD LLC                         |
      | FISHER-BASHIRIAN                  |
      | HAAG AND SONS                     |
      | HICKLE, CARTWRIGHT AND EMMERICH   |
      | JAKUBOWSKI-ZULAUF                 |
      | JOHNSON LLC                       |
      | KASSULKE, RITCHIE AND KOCH        |
      | KAUTZER, PFEFFER AND SCHUMM       |
      | KESSLER INC                       |
      | KIEHN-O'HARA                      |
      | KILBACK-ERNSER                    |
      | KSHLERIN, BRAKUS AND CHRISTIANSEN |
      | KUHLMAN-MARVIN                    |
      | KUHLMAN, ORTIZ AND LOCKMAN        |
      | KULAS, HINTZ AND DOYLE            |
      | LARSON, KLEIN AND WUNSCH          |
      | LEHNER GROUP                      |
      | MAYERT AND SONS                   |
      | MCCLURE, THIEL AND FRAMI          |
      | MOSCISKI AND SONS                 |
      | MURPHY LLC                        |
      | NIENOW AND SONS                   |
      | O'CONNER, FUNK AND COLLINS        |
      | PAGAC AND SONS                    |
      | PARKER, DIETRICH AND TREMBLAY     |
      | PREDOVIC, HAYES AND SCHOEN        |
      | REICHERT-MRAZ                     |
      | ROBERTS-ZEMLAK                    |
      | ROMAGUERA, SCHULIST AND GRAHAM    |
      | ROOB-WHITE                        |
      | RUECKER AND SONS                  |
      | RUECKER-WIZA                      |
      | RUSSEL AND SONS                   |
      | SCHMELER, KSHLERIN AND SHANAHAN   |
      | SCHOWALTER GROUP                  |
      | SHIELDS-D'AMORE                   |
      | SMITH-DOYLE                       |
      | STARK, ADAMS AND KOZEY            |
      | SWANIAWSKI, PREDOVIC AND GRANT    |
      | SWIFT, MANTE AND WUCKERT          |
      | THIEL, CHAMPLIN AND MCDERMOTT     |
      | TOY-ROBERTS                       |
      | UPTON INC                         |
      | WALSH-BRAKUS                      |
      | WELCH, PAGAC AND SWIFT            |
      | WILLMS-JACOBS                     |
      | WILLMS-KOELPIN                    |
      | WINTHEISER, WINDLER AND KULAS     |
      | WOLFF, KRAJCIK AND PROSACCO       |
      | ZIEMANN-CUMMERATA                 |
      | ZIEMANN-TROMP                     |

  Scenario Outline: Supplier details page
    And I click on 'View details' for '<supplier_name>'
    Then I am on the 'Supplier details' page
    And the caption is '<supplier_name>'
    And I should see the following details in the 'Supplier information' summary:
      | Name        | <supplier_name> |
      | DUNS Number | <duns_number>   |
      | Is an SME?  | <sme>           |
    And I should see the following details in the 'Contact information' summary:
      | Contact email            | <email>            |
      | Contact telephone number | <telephone_number> |
      | Website                  | <website>          |
    And I should see the following details in the 'Additional information' summary:
      | Address                | <address>                |
      | Lot 1 prospectus link  | <lot_1_prospectus_link>  |
      | Lot 2 prospectus link  | <lot_2_prospectus_link>  |
      | Lot 3 prospectus link  | <lot_3_prospectus_link>  |
      | Lot 4a prospectus link | <lot_4a_prospectus_link> |
      | Lot 4b prospectus link | <lot_4b_prospectus_link> |
      | Lot 4c prospectus link | <lot_4c_prospectus_link> |
      | Lot 5 prospectus link  | <lot_5_prospectus_link>  |

    Examples:
      | supplier_name     | duns_number | sme | email                              | telephone_number | website                                    | address                                                | lot_1_prospectus_link                  | lot_2_prospectus_link           | lot_3_prospectus_link | lot_4a_prospectus_link           | lot_4b_prospectus_link                    | lot_4c_prospectus_link                  | lot_5_prospectus_link                |
      | CRUICKSHANK GROUP | 539376601   | No  | cruickshank.group@oconner.example  | 557-630-7108     | http://cruickshankgroup.test/jennette      | Apt. 694 867 Alita Ville, East Mel, VA 79094-3689      | http://cruickshankgroup.test/nathaniel | N/A                             | N/A                   | N/A                              | N/A                                       | http://cruickshankgroup.test/mariam     | N/A                                  |
      | KILBACK-ERNSER    | 698296403   | No  | ernser_kilback@blanda.example      | 757.394.2105     | http://kilback-ernser.test/nedra_bashirian | Suite 858 9631 Brady Alley, Roseannemouth, CA 83709    | N/A                                    | N/A                             | N/A                   | http://kilback-ernser.test/lilla | N/A                                       | N/A                                     | N/A                                  |
      | TOY-ROBERTS       | 706028238   | Yes | toy.roberts@little-schmitt.example | (743) 554 5938   | http://toy-roberts.example/jame.torphy     | Apt. 116 61630 Hosea Heights, Wymanfurt, NV 15218-3156 | N/A                                    | http://toy-roberts.example/shon | N/A                   | N/A                              | http://toy-roberts.example/tiffanie_bruen | http://toy-roberts.example/gregg_legros | http://toy-roberts.example/lawerence |

  Scenario: Lot status
    And I click on 'View lot data' for 'ARMSTRONG GROUP'
    Then I am on the 'Supplier lot data' page
    And the caption is 'ARMSTRONG GROUP'
    And I should see the following details in the summary for the lot 'Lot 1 - Core Legal Services':
      | Lot status | Enabled       |
      | Services   | View services |
      | Rates      | View rates    |
    And I should see the following details in the summary for the lot 'Lot 2 - Major Projects and Complex Advice':
      | Lot status | Not on lot |
    And I should see the following details in the summary for the lot 'Lot 3 - Finance and High Risk/Innovation':
      | Lot status | Enabled       |
      | Services   | View services |
      | Rates      | View rates    |
    And I should see the following details in the summary for the lot 'Lot 4a - Trade and Investment Negotiations':
      | Lot status    | Enabled            |
      | Services      | View services      |
      | Jurisdictions | View jurisdictions |
      | Rates         | View rates         |
    And I should see the following details in the summary for the lot 'Lot 4b - International Trade Disputes':
      | Lot status | Not on lot |
    And I should see the following details in the summary for the lot 'Lot 4c - International Investment Disputes':
      | Lot status | Not on lot |
    And I should see the following details in the summary for the lot 'Lot 5 - Rail Legal Services':
      | Lot status | Not on lot |
