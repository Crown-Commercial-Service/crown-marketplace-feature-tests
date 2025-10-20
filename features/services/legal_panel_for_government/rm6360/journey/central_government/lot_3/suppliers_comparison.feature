Feature: Legal Panel for Government - Non central governemnt - Lot 3 - Suppliers comparison

  Scenario: Suppliers reviewed - The rates table is displayed for comparison
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
    And I select 'Lot 3 - Finance and High Risk/Innovation'
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 3 - Finance and High Risk/Innovation'
    When I check the following items:
      | Debt Capital Markets  |
      | Fintech Crypto Assets |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '14' suppliers can provide legal specialisms for government
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
    And I click on 'Compare the supplier rates'
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check the following items:
      | ARMSTRONG GROUP |
      | BATZ-BROWN      |
      | EMARD LLC       |
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    Then I should see the rates in the comparison table:
      | Supplier        | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant |
      | ARMSTRONG GROUP | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | BATZ-BROWN      | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
      | EMARD LLC       | £280.00 | £245.00                              | £210.00                                                   | £175.00                              | £140.00                                                            | £105.00                  | £70.00                     |
