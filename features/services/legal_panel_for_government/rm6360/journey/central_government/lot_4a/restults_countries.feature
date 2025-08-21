@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 4a - Results with country selection

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
      | ARMSTRONG GROUP                 | http://armstronggroup.test/quincy                 |
      | BLICK GROUP                     | http://blickgroup.test/tiffiny                    |
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                       | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/loriann           |
      | JOHNSON LLC                     | http://johnsonllc.example/gail                    |
      | KASSULKE, RITCHIE AND KOCH      | http://kassulkeritchieandkoch.example/rossie      |
      | SCHOWALTER GROUP                | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                     | http://smith-doyle.example/genny_oconnell         |
      | STARK, ADAMS AND KOZEY          | http://starkadamsandkozey.example/clay_jerde      |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/abram           |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'International law of trade'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                 | http://armstronggroup.test/quincy                 |
      | BLICK GROUP                     | http://blickgroup.test/tiffiny                    |
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                       | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/loriann           |
      | JOHNSON LLC                     | http://johnsonllc.example/gail                    |
      | KASSULKE, RITCHIE AND KOCH      | http://kassulkeritchieandkoch.example/rossie      |
      | KILBACK-ERNSER                  | http://kilback-ernser.test/lilla                  |
      | SCHOWALTER GROUP                | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                     | http://smith-doyle.example/genny_oconnell         |
      | STARK, ADAMS AND KOZEY          | http://starkadamsandkozey.example/clay_jerde      |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/abram           |

  Scenario: Country selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    Given I click on the 'Back' back link
     Then I am on the 'Select the countries for your requirement' page
    And I deselect all the items
    When I check the following items:
      | Burundi |
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    When I check the following items:
      | Assimilated Law |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                 | http://armstronggroup.test/quincy                   |
      | BLICK GROUP                     | http://blickgroup.test/tiffiny                      |
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/avis.swift   |
      | EMARD LLC                       | http://emardllc.example/jackson.pacocha             |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/loriann             |
      | JOHNSON LLC                     | http://johnsonllc.example/gail                      |
      | KASSULKE, RITCHIE AND KOCH      | http://kassulkeritchieandkoch.example/rossie        |
      | LARSON, KLEIN AND WUNSCH        | http://larsonkleinandwunsch.example/lynsey_leffler  |
      | SCHOWALTER GROUP                | http://schowaltergroup.example/lucienne_dare        |
      | SMITH-DOYLE                     | http://smith-doyle.example/genny_oconnell           |
      | STARK, ADAMS AND KOZEY          | http://starkadamsandkozey.example/clay_jerde        |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/abram             |

  Scenario: Going back from a supplier
    And I click on 'SMITH-DOYLE'
    Then I am on the 'SMITH-DOYLE' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                 | http://armstronggroup.test/quincy                 |
      | BLICK GROUP                     | http://blickgroup.test/tiffiny                    |
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                       | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/loriann           |
      | JOHNSON LLC                     | http://johnsonllc.example/gail                    |
      | KASSULKE, RITCHIE AND KOCH      | http://kassulkeritchieandkoch.example/rossie      |
      | SCHOWALTER GROUP                | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                     | http://smith-doyle.example/genny_oconnell         |
      | STARK, ADAMS AND KOZEY          | http://starkadamsandkozey.example/clay_jerde      |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/abram           |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                 | http://armstronggroup.test/quincy                 |
      | BLICK GROUP                     | http://blickgroup.test/tiffiny                    |
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                       | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/loriann           |
      | JOHNSON LLC                     | http://johnsonllc.example/gail                    |
      | KASSULKE, RITCHIE AND KOCH      | http://kassulkeritchieandkoch.example/rossie      |
      | SCHOWALTER GROUP                | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                     | http://smith-doyle.example/genny_oconnell         |
      | STARK, ADAMS AND KOZEY          | http://starkadamsandkozey.example/clay_jerde      |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/abram           |
