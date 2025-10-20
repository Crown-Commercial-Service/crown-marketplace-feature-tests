Feature: Legal Panel for Government - Non central governemnt - Lot 4a - Results

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

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal specialisms you need' page
    And I deselect all the items
    Given I check 'International treaty law'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '15' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                | http://armstronggroup.test/quincy                 |
      | BLICK GROUP                    | http://blickgroup.test/tiffiny                    |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                      | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/loriann           |
      | HAAG AND SONS                  | http://haagandsons.test/rodolfo                   |
      | JOHNSON LLC                    | http://johnsonllc.example/gail                    |
      | KASSULKE, RITCHIE AND KOCH     | http://kassulkeritchieandkoch.example/rossie      |
      | KESSLER INC                    | http://kesslerinc.example/ward                    |
      | KILBACK-ERNSER                 | http://kilback-ernser.test/lilla                  |
      | O'CONNER, FUNK AND COLLINS     | http://oconnerfunkandcollins.example/my_brakus    |
      | SCHOWALTER GROUP               | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                    | http://smith-doyle.example/genny_oconnell         |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/clay_jerde      |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/abram           |

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then the file 'Shortlist of Legal Panel for Government Suppliers.xlsx' is downloaded with the 'xlsx' extension
