Feature: Legal Panel for Government - Central governemnt - Lot 3 - Suppliers

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

  Scenario: Check the supplier data - SME
    Given I click on 'WILLMS-KOELPIN'
    Then I am on the 'WILLMS-KOELPIN' page
    Then the supplier 'is' an SME
    And the 'Partner' hourly rate is '£200.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£175.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£150.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£125.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£100.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£75.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£50.00'
    And the contact details for the supplier are:
      | koelpin.willms@schneider.test                           |
      | 847.214.9747                                            |
      | http://willms-koelpin.test/bertram                      |
      | Suite 992 2048 O'Reilly Greens, Lake Leviport, TX 51988 |
    And the prospectus link is 'http://willms-koelpin.test/harrison.murazik'

  Scenario: Check the supplier data - Non SME
    Given I click on 'SCHOWALTER GROUP'
    Then I am on the 'SCHOWALTER GROUP' page
    Then the supplier 'is not' an SME
    And the 'Partner' hourly rate is '£280.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£245.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£210.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£175.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£140.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£105.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£70.00'
    And the contact details for the supplier are:
      | schowalter.group@donnelly.test         |
      | 992.778.7963                           |
      | http://schowaltergroup.example/dora    |
      | 1399 Ward Springs, West Liza, ID 25679 |
    And the prospectus link is 'http://schowaltergroup.example/ngoc_shields'

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of Legal Panel for Government Suppliers.xlsx' is downloaded with the 'xlsx' extension
