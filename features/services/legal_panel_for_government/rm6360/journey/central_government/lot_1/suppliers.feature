Feature: Legal Panel for Government - Non central governemnt - Lot 1 - Suppliers

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
    And I select 'Lot 1 - Core Legal Services'
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 1 - Core Legal Services'
    When I check the following items:
      | Assimilated Law       |
      | Aviation and Airports |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | CRUICKSHANK GROUP                 | http://cruickshankgroup.test/nathaniel            |
      | CRUICKSHANK, WISOKY AND HARBER    | http://cruickshankwisokyandharber.example/kirby   |
      | DECKOW, ALTENWERTH AND HALEY      | http://deckowaltenwerthandhaley.test/eleni.legros |
      | DONNELLY-RIPPIN                   | http://donnelly-rippin.example/britney.ruecker    |
      | DOUGLAS GROUP                     | http://douglasgroup.test/jenette_rolfson          |
      | KSHLERIN, BRAKUS AND CHRISTIANSEN | http://kshlerinbrakusandchristiansen.test/eugenio |
      | KULAS, HINTZ AND DOYLE            | http://kulashintzanddoyle.example/joie            |
      | MURPHY LLC                        | http://murphyllc.test/troy                        |
      | NIENOW AND SONS                   | http://nienowandsons.test/geoffrey.hegmann        |
      | ROOB-WHITE                        | http://roob-white.example/raymond                 |
      | SCHOWALTER GROUP                  | http://schowaltergroup.example/carlos.collier     |
      | WOLFF, KRAJCIK AND PROSACCO       | http://wolffkrajcikandprosacco.test/buford        |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have not' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page

  Scenario: Check the supplier data - SME
    Given I click on 'MURPHY LLC'
    Then I am on the 'MURPHY LLC' page
    Then the supplier 'is' an SME
    And the 'Partner' hourly rate is '£280.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£245.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£210.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£175.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£140.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£105.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£70.00'
    And the contact details for the supplier are:
      | murphy.llc@friesen.test                                  |
      | 240.166.6354                                             |
      | http://murphyllc.test/alan                               |
      | Suite 873 91400 Britany Isle, Windlerland, RI 32195-7620 |
    And the prospectus link is 'http://murphyllc.test/troy'

  Scenario: Check the supplier data - Non SME
    Given I click on 'DONNELLY-RIPPIN'
    Then I am on the 'DONNELLY-RIPPIN' page
    Then the supplier 'is not' an SME
    And the 'Partner' hourly rate is '£200.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£175.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£150.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£125.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£100.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£75.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£50.00'
    And the contact details for the supplier are:
      | rippin.donnelly@jenkins.example             |
      | 965.701.2320                                |
      | http://donnelly-rippin.example/norris       |
      | 5769 Tyrell Lane, East Gastonfort, WI 51199 |
    And the prospectus link is 'http://donnelly-rippin.example/britney.ruecker'
