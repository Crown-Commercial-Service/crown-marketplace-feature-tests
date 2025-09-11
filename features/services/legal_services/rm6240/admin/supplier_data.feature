@skip-production
Feature: Legal services - Admin - Supplier data pages

  Background: Navigate to supplier data page
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page

  Scenario: Supplier data page
    Then I should see the following suppliers on the page:
      | BERNHARD, WEHNER AND ORN          |
      | BERNIER, BRUEN AND RENNER         |
      | BOGAN, RODRIGUEZ AND SIPES        |
      | BREKKE, HAMMES AND WINTHEISER     |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | CORKERY-BLANDA                    |
      | CRUICKSHANK, RUECKER AND SAWAYN   |
      | EBERT, BASHIRIAN AND MILLER       |
      | FLATLEY GROUP                     |
      | GERLACH AND SONS                  |
      | GOLDNER GROUP                     |
      | GOTTLIEB GROUP                    |
      | GRAHAM, REICHEL AND KULAS         |
      | GRANT INC                         |
      | GREENFELDER LLC                   |
      | HALEY-SCHOEN                      |
      | HANSEN, REMPEL AND HEANEY         |
      | HAUCK AND SONS                    |
      | HESSEL-QUITZON                    |
      | HODKIEWICZ INC                    |
      | HOMENICK-O'KEEFE                  |
      | HUELS-WELCH                       |
      | HYATT, ZIEMANN AND EMARD          |
      | JASKOLSKI, VONRUEDEN AND DOOLEY   |
      | LUEILWITZ, JAST AND GLEASON       |
      | LUETTGEN-RIPPIN                   |
      | MACGYVER-SCHOEN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | MOSCISKI, LABADIE AND REMPEL      |
      | NICOLAS-PFEFFER                   |
      | PADBERG, KEMMER AND ONDRICKA      |
      | PAUCEK, BUCKRIDGE AND GULGOWSKI   |
      | PFEFFER GROUP                     |
      | RATH-NICOLAS                      |
      | RICE INC                          |
      | RICE-KREIGER                      |
      | RIPPIN, SANFORD AND GOYETTE       |
      | ROWE GROUP                        |
      | RUTHERFORD, LANGOSH AND GREEN     |
      | SATTERFIELD-LOCKMAN               |
      | SATTERFIELD-WHITE                 |
      | SCHNEIDER AND SONS                |
      | SHANAHAN, CARTWRIGHT AND SCHAEFER |
      | SPORER, MARKS AND HOWE            |
      | STEUBER, THOMPSON AND LANG        |
      | STRACKE GROUP                     |
      | THOMPSON AND SONS                 |
      | THOMPSON, DURGAN AND LEHNER       |
      | TORPHY LLC                        |
      | VEUM-LOWE                         |
      | WEISSNAT INC                      |
      | WYMAN-O'CONNER                    |
      | ZULAUF, LABADIE AND MCCULLOUGH    |
    And I enter "la" for the supplier search
    Then I should see the following suppliers on the page:
      | CORKERY-BLANDA                 |
      | FLATLEY GROUP                  |
      | GERLACH AND SONS               |
      | GRAHAM, REICHEL AND KULAS      |
      | MOSCISKI, LABADIE AND REMPEL   |
      | NICOLAS-PFEFFER                |
      | RATH-NICOLAS                   |
      | RUTHERFORD, LANGOSH AND GREEN  |
      | STEUBER, THOMPSON AND LANG     |
      | ZULAUF, LABADIE AND MCCULLOUGH |
    And I enter "" for the supplier search
    Then I should see the following suppliers on the page:
      | BERNHARD, WEHNER AND ORN          |
      | BERNIER, BRUEN AND RENNER         |
      | BOGAN, RODRIGUEZ AND SIPES        |
      | BREKKE, HAMMES AND WINTHEISER     |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | CORKERY-BLANDA                    |
      | CRUICKSHANK, RUECKER AND SAWAYN   |
      | EBERT, BASHIRIAN AND MILLER       |
      | FLATLEY GROUP                     |
      | GERLACH AND SONS                  |
      | GOLDNER GROUP                     |
      | GOTTLIEB GROUP                    |
      | GRAHAM, REICHEL AND KULAS         |
      | GRANT INC                         |
      | GREENFELDER LLC                   |
      | HALEY-SCHOEN                      |
      | HANSEN, REMPEL AND HEANEY         |
      | HAUCK AND SONS                    |
      | HESSEL-QUITZON                    |
      | HODKIEWICZ INC                    |
      | HOMENICK-O'KEEFE                  |
      | HUELS-WELCH                       |
      | HYATT, ZIEMANN AND EMARD          |
      | JASKOLSKI, VONRUEDEN AND DOOLEY   |
      | LUEILWITZ, JAST AND GLEASON       |
      | LUETTGEN-RIPPIN                   |
      | MACGYVER-SCHOEN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | MOSCISKI, LABADIE AND REMPEL      |
      | NICOLAS-PFEFFER                   |
      | PADBERG, KEMMER AND ONDRICKA      |
      | PAUCEK, BUCKRIDGE AND GULGOWSKI   |
      | PFEFFER GROUP                     |
      | RATH-NICOLAS                      |
      | RICE INC                          |
      | RICE-KREIGER                      |
      | RIPPIN, SANFORD AND GOYETTE       |
      | ROWE GROUP                        |
      | RUTHERFORD, LANGOSH AND GREEN     |
      | SATTERFIELD-LOCKMAN               |
      | SATTERFIELD-WHITE                 |
      | SCHNEIDER AND SONS                |
      | SHANAHAN, CARTWRIGHT AND SCHAEFER |
      | SPORER, MARKS AND HOWE            |
      | STEUBER, THOMPSON AND LANG        |
      | STRACKE GROUP                     |
      | THOMPSON AND SONS                 |
      | THOMPSON, DURGAN AND LEHNER       |
      | TORPHY LLC                        |
      | VEUM-LOWE                         |
      | WEISSNAT INC                      |
      | WYMAN-O'CONNER                    |
      | ZULAUF, LABADIE AND MCCULLOUGH    |

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
      | Address               | <address>               |
      | Lot 1 prospectus link | <lot_1_prospectus_link> |
      | Lot 2 prospectus link | <lot_2_prospectus_link> |
      | Lot 3 prospectus link | <lot_3_prospectus_link> |

    Examples:
      | supplier_name              | duns_number | sme | email                                      | telephone_number     | website                   | address                                         | lot_1_prospectus_link | lot_2_prospectus_link | lot_3_prospectus_link |
      | BOGAN, RODRIGUEZ AND SIPES | 616556946   | Yes | rodriguez_and_bogan_sipes@dach-osinski.net | (159) 104-3577 x8710 | http://carter.io/erlene   | 9334 Koss Trail, Willmsstad, WV 61459-7171      | N/A                   | N/A                   | N/A                   |
      | GRANT INC                  | 590029860   | Yes | inc.grant@blanda.net                       | 1-510-960-4231 x8430 | http://schumm.co/kirk     | Apt. 256 84014 Horace Burgs, Muoistad, VT 80065 | N/A                   | N/A                   | N/A                   |
      | RICE INC                   | 126783648   | No  | inc_rice@simonis-schowalter.name           | 464-005-2105         | http://harvey.co/everette | 67167 Brice Dam, Fayborough, UT 63880           | N/A                   | N/A                   | N/A                   |

  Scenario: Lot status
    And I click on 'View lot data' for 'BERNHARD, WEHNER AND ORN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'BERNHARD, WEHNER AND ORN'
    And I should see the following details in the summary for the lot 'Lot 1a - Full service provision (England and Wales)':
      | Lot status | Inactive |
    And I should see the following details in the summary for the lot 'Lot 1b - Full service provision (Scotland)':
      | Lot status | Inactive |
    And I should see the following details in the summary for the lot 'Lot 1c - Full service provision (Northern Ireland)':
      | Lot status | Active        |
      | Services   | View services |
      | Rates      | View rates    |
    And I should see the following details in the summary for the lot 'Lot 2a - General service provision (England and Wales)':
      | Lot status | Active        |
      | Services   | View services |
      | Rates      | View rates    |
    And I should see the following details in the summary for the lot 'Lot 2b - General service provision (Scotland)':
      | Lot status | Active        |
      | Services   | View services |
      | Rates      | View rates    |
    And I should see the following details in the summary for the lot 'Lot 2c - General service provision (Northern Ireland)':
      | Lot status | Active        |
      | Services   | View services |
      | Rates      | View rates    |
    And I should see the following details in the summary for the lot 'Lot 3 - Transport rail legal services':
      | Lot status | Inactive |
