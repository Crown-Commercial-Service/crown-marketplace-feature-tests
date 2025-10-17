Feature: Legal Panel for Government - Central governemnt - Lot 4a - Suppliers comparison - Countries

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 4a - Trade and Investment Negotiations'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the countries for your requirement' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    When I check the following items:
      | Finland     |
      | South Sudan |
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    When I check the following items:
      | Assimilated Law |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                | http://armstronggroup.test/quincy                 |
      | BLICK GROUP                    | http://blickgroup.test/tiffiny                    |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                      | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/loriann           |
      | JOHNSON LLC                    | http://johnsonllc.example/gail                    |
      | KASSULKE, RITCHIE AND KOCH     | http://kassulkeritchieandkoch.example/rossie      |
      | SCHOWALTER GROUP               | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                    | http://smith-doyle.example/genny_oconnell         |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/clay_jerde      |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/abram           |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | ARMSTRONG GROUP                |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison

  Scenario: The rates table is displayed for comparison
    And I click on 'Finland'
    Then I should see the rates in the comparison table:
      | Supplier                       | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | ARMSTRONG GROUP                | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £175.00        | £140.00                                                          | £210.00                                                | £210.00                                              |
      | COLLIER, AUFDERHAR AND VOLKMAN | £225.00                                        | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     | £125.00        | £100.00                                                          | £150.00                                                | £150.00                                              |
      | EMARD LLC                      | £225.00                                        | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     | £125.00        | £100.00                                                          | £150.00                                                | £150.00                                              |
    And I click on 'South Sudan'
    Then I should see the rates in the comparison table:
      | Supplier                       | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | ARMSTRONG GROUP                | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £175.00        | £140.00                                                          | £210.00                                                | £210.00                                              |
      | COLLIER, AUFDERHAR AND VOLKMAN | £270.00                                        | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     | £150.00        | £120.00                                                          | £180.00                                                | £180.00                                              |
      | EMARD LLC                      | £270.00                                        | £240.00 | £210.00                              | £180.00                                                   | £150.00                              | £120.00                                                            | £90.00                   | £60.00                     | £150.00        | £120.00                                                          | £180.00                                                | £180.00                                              |

  Scenario: Changing selection changes the results
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And I deselect all the items
    When I check the following items:
      | SMITH-DOYLE            |
      | WELCH, PAGAC AND SWIFT |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '2' suppliers have been selected for comparison
    And I click on 'Finland'
    Then I should see the rates in the comparison table:
      | Supplier               | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | SMITH-DOYLE            | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £175.00        | £140.00                                                          | £210.00                                                | £210.00                                              |
      | WELCH, PAGAC AND SWIFT | £225.00                                        | £200.00 | £175.00                              | £150.00                                                   | £125.00                              | £100.00                                                            | £75.00                   | £50.00                     | £125.00        | £100.00                                                          | £150.00                                                | £150.00                                              |
    And I click on 'South Sudan'
    Then I should see the rates in the comparison table:
      | Supplier               | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
      | SMITH-DOYLE            | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £175.00        | £140.00                                                          | £210.00                                                | £210.00                                              |
      | WELCH, PAGAC AND SWIFT | £315.00                                        | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     | £175.00        | £140.00                                                          | £210.00                                                | £210.00                                              |

  Scenario: Back to results
    When I click on 'Back to results'
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                | http://armstronggroup.test/quincy                 |
      | BLICK GROUP                    | http://blickgroup.test/tiffiny                    |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                      | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/loriann           |
      | JOHNSON LLC                    | http://johnsonllc.example/gail                    |
      | KASSULKE, RITCHIE AND KOCH     | http://kassulkeritchieandkoch.example/rossie      |
      | SCHOWALTER GROUP               | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                    | http://smith-doyle.example/genny_oconnell         |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/clay_jerde      |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/abram           |
