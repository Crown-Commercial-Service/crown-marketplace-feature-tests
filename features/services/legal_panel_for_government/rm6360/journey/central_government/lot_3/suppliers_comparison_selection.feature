@skip-production
Feature: Legal Panel for Government - Non central governemnt - Lot 3 - Suppliers comparison selection

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 3 - Finance and High Risk/Innovation'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 3 - Finance and High Risk/Innovation'
    When I check the following items:
      | Debt Capital Markets  |
      | Fintech Crypto Assets |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '13' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                 | http://armstronggroup.test/geraldine_abbott             |
      | BATZ-BROWN                      | http://batz-brown.test/dennis                           |
      | EMARD LLC                       | http://emardllc.example/corine.balistreri               |
      | KASSULKE, RITCHIE AND KOCH      | http://kassulkeritchieandkoch.example/julianna          |
      | KULAS, HINTZ AND DOYLE          | http://kulashintzanddoyle.example/moses_ruecker         |
      | REICHERT-MRAZ                   | http://reichert-mraz.test/carey                         |
      | ROMAGUERA, SCHULIST AND GRAHAM  | http://romagueraschulistandgraham.test/cordell          |
      | SCHOWALTER GROUP                | http://schowaltergroup.example/ngoc_shields             |
      | SMITH-DOYLE                     | http://smith-doyle.example/joshua_murray                |
      | SWANIAWSKI, PREDOVIC AND GRANT  | http://swaniawskipredovicandgrant.example/cody.murazik  |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/scot                  |
      | WILLMS-JACOBS                   | http://willms-jacobs.example/orlando                    |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/harrison.murazik             |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Select suppliers for comparison' page

  Scenario: The correct options are available
    Then I should see the following options for the lot:
      | ARMSTRONG GROUP                 |
      | BATZ-BROWN                      |
      | EMARD LLC                       |
      | KASSULKE, RITCHIE AND KOCH      |
      | KULAS, HINTZ AND DOYLE          |
      | REICHERT-MRAZ                   |
      | ROMAGUERA, SCHULIST AND GRAHAM  |
      | SCHOWALTER GROUP                |
      | SMITH-DOYLE                     |
      | SWANIAWSKI, PREDOVIC AND GRANT  |
      | WELCH, PAGAC AND SWIFT          |
      | WILLMS-JACOBS                   |
      | WILLMS-KOELPIN                  |

  Scenario: Service selection appears in basked
    Then the basket should say 'No suppliers selected'
    And the remove all link should not be visible
    When I check 'ARMSTRONG GROUP'
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | ARMSTRONG GROUP                 |
    When I check the following items:
      | BATZ-BROWN                      |
      | EMARD LLC                       |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | ARMSTRONG GROUP                 |
      | BATZ-BROWN                      |
      | EMARD LLC                       |

  Scenario: Changing the selection will change the basket
    When I check the following items:
      | ARMSTRONG GROUP                 |
      | BATZ-BROWN                      |
      | EMARD LLC                       |
      | KASSULKE, RITCHIE AND KOCH      |
    Then the basket should say '4 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | ARMSTRONG GROUP                 |
      | BATZ-BROWN                      |
      | EMARD LLC                       |
      | KASSULKE, RITCHIE AND KOCH      |
    When I deselect the following items:
      | ARMSTRONG GROUP                 |
    Then the basket should say '3 suppliers selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | BATZ-BROWN                      |
      | EMARD LLC                       |
      | KASSULKE, RITCHIE AND KOCH      |
    When I remove the following items from the basket:
      | BATZ-BROWN                      |
      | EMARD LLC                       |
    Then the basket should say '1 supplier selected'
    And the remove all link should be visible
    And the following items should appear in the basket:
      | KASSULKE, RITCHIE AND KOCH      |
    When I click on 'Remove all'
    Then the basket should say 'No suppliers selected'

  Scenario: Go back from suppliers and change selection
    When I check the following items:
      | ARMSTRONG GROUP                 |
      | BATZ-BROWN                      |
      | EMARD LLC                       |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I click on the 'Back' back link
    Then I am on the 'Select suppliers for comparison' page
    And the following items should appear in the basket:
      | ARMSTRONG GROUP                 |
      | BATZ-BROWN                      |
      | EMARD LLC                       |
