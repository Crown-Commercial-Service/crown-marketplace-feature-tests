@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 5 - Suppliers

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 5 - Rail Legal Services'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 5 - Rail Legal Services'
    When I check the following items:
      | Pensions law  |
      | Planning law  |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/alane.ratke      |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/reyna                  |
      | HICKLE, CARTWRIGHT AND EMMERICH | http://hicklecartwrightandemmerich.example/armando      |
      | KAUTZER, PFEFFER AND SCHUMM     | http://kautzerpfefferandschumm.test/deandrea            |
      | LEHNER GROUP                    | http://lehnergroup.example/erwin                        |
      | ROMAGUERA, SCHULIST AND GRAHAM  | http://romagueraschulistandgraham.test/alejandrina      |
      | SCHMELER, KSHLERIN AND SHANAHAN | http://schmelerkshlerinandshanahan.test/kurtis_mayer    |
      | SWANIAWSKI, PREDOVIC AND GRANT  | http://swaniawskipredovicandgrant.example/harold.crooks |
      | SWIFT, MANTE AND WUCKERT        | http://swiftmanteandwuckert.test/caryn                  |
      | WILLMS-KOELPIN                  | http://willms-koelpin.test/inga_dubuque                 |
      | WINTHEISER, WINDLER AND KULAS   | http://wintheiserwindlerandkulas.example/percy          |
      | ZIEMANN-TROMP                   | http://ziemann-tromp.example/sammie_denesik             |

  Scenario: Check the supplier data - SME
    Given I click on 'ROMAGUERA, SCHULIST AND GRAHAM'
    Then I am on the 'ROMAGUERA, SCHULIST AND GRAHAM' page
    Then the supplier 'is' an SME
    And the 'Partner' hourly rate is '£280.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£245.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£210.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£175.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£140.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£105.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£70.00'
    And the contact details for the supplier are:
      | and_schulist_romaguera_graham@legros.test               |
      | 796 949 2229                                            |
      | http://romagueraschulistandgraham.test/leopoldo         |
      | Suite 979 100 Jesusita Points, New Aileenland, MT 85717 |
    And the prospectus link is 'http://romagueraschulistandgraham.test/alejandrina'

  Scenario: Check the supplier data - Non SME
    Given I click on 'SWIFT, MANTE AND WUCKERT'
    Then I am on the 'SWIFT, MANTE AND WUCKERT' page
    Then the supplier 'is not' an SME
    And the 'Partner' hourly rate is '£200.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£175.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£150.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£125.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£100.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£75.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£50.00'
    And the contact details for the supplier are:
      | and_mante_swift_wuckert@spencer.test                  |
      | 326.723.9088                                          |
      | http://swiftmanteandwuckert.test/alfredia_wintheiser  |
      | Apt. 103 915 Aufderhar Rapids, Schoenview, VT 79396   |
    And the prospectus link is 'http://swiftmanteandwuckert.test/caryn'

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of Legal Panel for Government Suppliers.xlsx' is downloaded with the 'xlsx' extension