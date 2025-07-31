@skip-production
Feature: Legal Panel for Government - Central governemnt - Lot 4b - Results

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 4b - International Trade Disputes'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Compliance with international law       |
      | Domestic law of jurisdictions for trade |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '9' suppliers can provide legal services for government
    And the selected legal service for government suppliers are:
      | COLLIER, AUFDERHAR AND VOLKMAN  | http://collieraufderharandvolkman.test/emile    |
      | DECKOW, KIEHN AND ORN           | http://deckowkiehnandorn.example/manual         |
      | FISHER-BASHIRIAN                | http://fisher-bashirian.example/milton.klein    |
      | MCCLURE, THIEL AND FRAMI        | http://mcclurethielandframi.test/darius_stanton |
      | RUECKER AND SONS                | http://rueckerandsons.example/edmond_upton      |
      | SHIELDS-D'AMORE                 | http://shields-damore.example/piedad.collier    |
      | TOY-ROBERTS                     | http://toy-roberts.example/tiffanie_bruen       |
      | WELCH, PAGAC AND SWIFT          | http://welchpagacandswift.example/dustin        |
      | ZIEMANN-CUMMERATA               | http://ziemann-cummerata.test/chuck.yost        |

  Scenario: Check the supplier data - SME
    Given I click on 'TOY-ROBERTS'
    Then I am on the 'TOY-ROBERTS' page
    Then the supplier 'is' an SME
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
    And the 'Modeller, Econometrician, Analyst, Associate Analyst' hourly rate is '£175.00'
    And the contact details for the supplier are:
      | toy.roberts@little-schmitt.example                      |
      | (743) 554 5938                                          |
      | http://toy-roberts.example/jame.torphy                  |
      | Apt. 116 61630 Hosea Heights, Wymanfurt, NV 15218-3156  |
    And the prospectus link is 'http://toy-roberts.example/tiffanie_bruen'

  Scenario: Check the supplier data - Non SME
    Given I click on 'RUECKER AND SONS'
    Then I am on the 'RUECKER AND SONS' page
    Then the supplier 'is not' an SME
    And the 'Senior Counsel, Senior Partner (20 years +PQE)' hourly rate is '£270.00'
    And the 'Partner' hourly rate is '£240.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£210.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£180.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£150.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£120.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£90.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£60.00'
    And the 'Senior Analyst' hourly rate is '£150.00'
    And the 'Analyst, Associate Analyst, Research Associate, Research Officer' hourly rate is '£120.00'
    And the 'Senior Modeller, Senior Econometrician, Senior Analyst' hourly rate is '£180.00'
    And the 'Modeller, Econometrician, Analyst, Associate Analyst' hourly rate is '£150.00'
    And the contact details for the supplier are:
      | and.sons.ruecker@padberg-jenkins.example          |
      | 2870351752                                        |
      | http://rueckerandsons.example/moshe.pagac         |
      | Suite 370 2705 Waelchi Creek, Lucymouth, MI 80158 |
    And the prospectus link is 'http://rueckerandsons.example/edmond_upton'

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of Legal Panel for Government Suppliers.xlsx' is downloaded with the 'xlsx' extension