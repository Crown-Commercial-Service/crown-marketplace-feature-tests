Feature: Legal Panel for Government - Central governemnt - Lot 3 - Results

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
    And I should see that '14' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                | http://armstronggroup.test/geraldine_abbott            |
      | BATZ-BROWN                     | http://batz-brown.test/dennis                          |
      | EMARD LLC                      | http://emardllc.example/corine.balistreri              |
      | KASSULKE, RITCHIE AND KOCH     | http://kassulkeritchieandkoch.example/julianna         |
      | KUHLMAN, ORTIZ AND LOCKMAN     | http://kuhlmanortizandlockman.example/philip           |
      | KULAS, HINTZ AND DOYLE         | http://kulashintzanddoyle.example/moses_ruecker        |
      | REICHERT-MRAZ                  | http://reichert-mraz.test/carey                        |
      | ROMAGUERA, SCHULIST AND GRAHAM | http://romagueraschulistandgraham.test/cordell         |
      | SCHOWALTER GROUP               | http://schowaltergroup.example/ngoc_shields            |
      | SMITH-DOYLE                    | http://smith-doyle.example/joshua_murray               |
      | SWANIAWSKI, PREDOVIC AND GRANT | http://swaniawskipredovicandgrant.example/cody.murazik |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/scot                 |
      | WILLMS-JACOBS                  | http://willms-jacobs.example/orlando                   |
      | WILLMS-KOELPIN                 | http://willms-koelpin.test/harrison.murazik            |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'United State Securities & Regulatory'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '13' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP            | http://armstronggroup.test/geraldine_abbott     |
      | BATZ-BROWN                 | http://batz-brown.test/dennis                   |
      | DECKOW, KIEHN AND ORN      | http://deckowkiehnandorn.example/matt           |
      | EMARD LLC                  | http://emardllc.example/corine.balistreri       |
      | KASSULKE, RITCHIE AND KOCH | http://kassulkeritchieandkoch.example/julianna  |
      | KUHLMAN, ORTIZ AND LOCKMAN | http://kuhlmanortizandlockman.example/philip    |
      | KULAS, HINTZ AND DOYLE     | http://kulashintzanddoyle.example/moses_ruecker |
      | LEHNER GROUP               | http://lehnergroup.example/jaime                |
      | REICHERT-MRAZ              | http://reichert-mraz.test/carey                 |
      | SCHOWALTER GROUP           | http://schowaltergroup.example/ngoc_shields     |
      | SMITH-DOYLE                | http://smith-doyle.example/joshua_murray        |
      | WELCH, PAGAC AND SWIFT     | http://welchpagacandswift.example/scot          |
      | WILLMS-JACOBS              | http://willms-jacobs.example/orlando            |

  Scenario: Going back from a supplier
    And I click on 'WILLMS-JACOBS'
    Then I am on the 'WILLMS-JACOBS' page
    And the sub title is 'Lot 3 - Finance and High Risk/Innovation'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '14' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                | http://armstronggroup.test/geraldine_abbott            |
      | BATZ-BROWN                     | http://batz-brown.test/dennis                          |
      | EMARD LLC                      | http://emardllc.example/corine.balistreri              |
      | KASSULKE, RITCHIE AND KOCH     | http://kassulkeritchieandkoch.example/julianna         |
      | KUHLMAN, ORTIZ AND LOCKMAN     | http://kuhlmanortizandlockman.example/philip           |
      | KULAS, HINTZ AND DOYLE         | http://kulashintzanddoyle.example/moses_ruecker        |
      | REICHERT-MRAZ                  | http://reichert-mraz.test/carey                        |
      | ROMAGUERA, SCHULIST AND GRAHAM | http://romagueraschulistandgraham.test/cordell         |
      | SCHOWALTER GROUP               | http://schowaltergroup.example/ngoc_shields            |
      | SMITH-DOYLE                    | http://smith-doyle.example/joshua_murray               |
      | SWANIAWSKI, PREDOVIC AND GRANT | http://swaniawskipredovicandgrant.example/cody.murazik |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/scot                 |
      | WILLMS-JACOBS                  | http://willms-jacobs.example/orlando                   |
      | WILLMS-KOELPIN                 | http://willms-koelpin.test/harrison.murazik            |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '14' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                | http://armstronggroup.test/geraldine_abbott            |
      | BATZ-BROWN                     | http://batz-brown.test/dennis                          |
      | EMARD LLC                      | http://emardllc.example/corine.balistreri              |
      | KASSULKE, RITCHIE AND KOCH     | http://kassulkeritchieandkoch.example/julianna         |
      | KUHLMAN, ORTIZ AND LOCKMAN     | http://kuhlmanortizandlockman.example/philip           |
      | KULAS, HINTZ AND DOYLE         | http://kulashintzanddoyle.example/moses_ruecker        |
      | REICHERT-MRAZ                  | http://reichert-mraz.test/carey                        |
      | ROMAGUERA, SCHULIST AND GRAHAM | http://romagueraschulistandgraham.test/cordell         |
      | SCHOWALTER GROUP               | http://schowaltergroup.example/ngoc_shields            |
      | SMITH-DOYLE                    | http://smith-doyle.example/joshua_murray               |
      | SWANIAWSKI, PREDOVIC AND GRANT | http://swaniawskipredovicandgrant.example/cody.murazik |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/scot                 |
      | WILLMS-JACOBS                  | http://willms-jacobs.example/orlando                   |
      | WILLMS-KOELPIN                 | http://willms-koelpin.test/harrison.murazik            |
