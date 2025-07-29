@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 4a - Results

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
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    When I check the following items:
      | Assimilated Law                         |
      | Domestic law of jurisdictions for trade |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '8' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                 | http://armstronggroup.test/quincy                 |
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                       | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/loriann           |
      | KASSULKE, RITCHIE AND KOCH      | http://kassulkeritchieandkoch.example/rossie      |
      | SCHOWALTER GROUP                | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                     | http://smith-doyle.example/genny_oconnell         |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/abram           |

  Scenario: Check the supplier data - SME
    Given I click on "ARMSTRONG GROUP"
    Then I am on the "ARMSTRONG GROUP" page
    Then the supplier 'is' an SME
    And the 'Senior Counsel, Senior Partner (20 years +PQE)' hourly rate is '£225.00'
    And the 'Partner' hourly rate is '£200.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£175.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£150.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£125.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£100.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£75.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£50.00'
    And the 'Senior Analyst' hourly rate is '£125.00'
    And the 'Analyst, Associate Analyst, Research Associate, Research Officer' hourly rate is '£100.00'
    And the 'Senior Modeller, Senior Econometrician, Senior Analyst' hourly rate is '£150.00'
    And the 'Modeller, Econometrician, Analyst, Associate Analyst' hourly rate is '£150.00'
    And the contact details for the supplier are:
      | armstrong_group@smitham-fritsch.example           |
      | 178.008.1854                                      |
      | http://armstronggroup.test/theo.kertzmann         |
      | 264 Rodriguez Shores, South Kelley, NH 37107-9989 |
    And the prospectus link is 'http://armstronggroup.test/quincy'

  Scenario: Check the supplier data - Non SME
    Given I click on 'FISHER-BASHIRIAN'
    Then I am on the 'FISHER-BASHIRIAN' page
    Then the supplier 'is not' an SME
    And the 'Senior Counsel, Senior Partner (20 years +PQE)' hourly rate is '£315.00'
    And the 'Partner' hourly rate is '£280.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£245.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£210.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£175.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£140.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£105.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£70.00'
    And the 'Senior Analyst' hourly rate is '£175.00'
    And the 'Analyst, Associate Analyst, Research Associate, Research Officer' hourly rate is '£140.00'
    And the 'Senior Modeller, Senior Econometrician, Senior Analyst' hourly rate is '£210.00'
    And the 'Modeller, Econometrician, Analyst, Associate Analyst' hourly rate is '£210.00'
    And the contact details for the supplier are:
      | fisher_bashirian@hoppe.example                |
      | (660) 627-7098                                |
      | http://fisher-bashirian.example/zack.beatty   |
      | 4384 Cinderella Estate, Port Sunday, IA 55465 |
    And the prospectus link is 'http://fisher-bashirian.example/loriann'

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of Legal Panel for Government Suppliers.xlsx' is downloaded with the 'xlsx' extension