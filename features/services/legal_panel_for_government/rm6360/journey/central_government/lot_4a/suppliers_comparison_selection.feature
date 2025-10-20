Feature: Legal Panel for Government - Non central governemnt - Lot 4a - Suppliers comparison selection

  Scenario: The correct options are available
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
    And I select 'Lot 4a - Trade and Investment Negotiations'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    When I check the following items:
      | Assimilated Law                         |
      | Domestic law of jurisdictions for trade |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                | http://armstronggroup.test/quincy                 |
      | BLICK GROUP                    | http://blickgroup.test/tiffiny                    |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                      | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/loriann           |
      | JOHNSON LLC                    | http://johnsonllc.example/gail                    |
      | KASSULKE, RITCHIE AND KOCH     | http://kassulkeritchieandkoch.example/rossie      |
      | KESSLER INC                    | http://kesslerinc.example/ward                    |
      | SCHOWALTER GROUP               | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                    | http://smith-doyle.example/genny_oconnell         |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/clay_jerde      |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/abram           |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    Then I should see the following options for the lot:
      | ARMSTRONG GROUP                |
      | BLICK GROUP                    |
      | COLLIER, AUFDERHAR AND VOLKMAN |
      | EMARD LLC                      |
      | FISHER-BASHIRIAN               |
      | JOHNSON LLC                    |
      | KASSULKE, RITCHIE AND KOCH     |
      | KESSLER INC                    |
      | SCHOWALTER GROUP               |
      | SMITH-DOYLE                    |
      | STARK, ADAMS AND KOZEY         |
      | WELCH, PAGAC AND SWIFT         |
