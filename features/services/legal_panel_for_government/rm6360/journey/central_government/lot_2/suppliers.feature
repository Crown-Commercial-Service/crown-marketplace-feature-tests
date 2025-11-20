Feature: Legal Panel for Government - Non central governemnt - Lot 2 - Suppliers

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
    And I select 'Lot 2 - Major Projects and Complex Advice'
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 2 - Major Projects and Complex Advice'
    When I check the following items:
      | Competition Law |
      | Contracts       |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '18' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | BATZ-BROWN                     | http://batz-brown.test/edris.oconner                    |
      | BLICK GROUP                    | http://blickgroup.test/kitty_zulauf                     |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/heide.runolfsson |
      | DOUGLAS GROUP                  | http://douglasgroup.test/claudio_blick                  |
      | JOHNSON LLC                    | http://johnsonllc.example/vicente                       |
      | KUHLMAN, ORTIZ AND LOCKMAN     | http://kuhlmanortizandlockman.example/rosette_legros    |
      | KULAS, HINTZ AND DOYLE         | http://kulashintzanddoyle.example/imelda_turcotte       |
      | MURPHY LLC                     | http://murphyllc.test/charley                           |
      | NIENOW AND SONS                | http://nienowandsons.test/vera                          |
      | REICHERT-MRAZ                  | http://reichert-mraz.test/clifford                      |
      | ROOB-WHITE                     | http://roob-white.example/tristan_turcotte              |
      | RUECKER AND SONS               | http://rueckerandsons.example/dana_kohler               |
      | SHIELDS-D'AMORE                | http://shields-damore.example/odell                     |
      | SMITH-DOYLE                    | http://smith-doyle.example/efren                        |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/nelle                 |
      | TOY-ROBERTS                    | http://toy-roberts.example/shon                         |
      | WILLMS-JACOBS                  | http://willms-jacobs.example/georgiann.luettgen         |
      | WOLFF, KRAJCIK AND PROSACCO    | http://wolffkrajcikandprosacco.test/taylor_johnson      |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page

  Scenario: Check the supplier data - SME
    Given I click on 'COLLIER, AUFDERHAR AND VOLKMAN'
    Then I am on the 'COLLIER, AUFDERHAR AND VOLKMAN' page
    Then the supplier 'is' an SME
    And the 'Partner' hourly rate is '£240.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£210.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£180.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£150.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£120.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£90.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£60.00'
    And the 'Legal Project Managers' hourly rate is '£195.00'
    And the contact details for the supplier are:
      | collier_volkman_aufderhar_and@senger.test    |
      | 516-485-8148                                 |
      | http://collieraufderharandvolkman.test/lydia |
      | 9687 Dona Fords, West Majorie, OR 06822-3322 |
    And the prospectus link is 'http://collieraufderharandvolkman.test/heide.runolfsson'

  Scenario: Check the supplier data - Non SME
    Given I click on 'KULAS, HINTZ AND DOYLE'
    Then I am on the 'KULAS, HINTZ AND DOYLE' page
    Then the supplier 'is not' an SME
    And the 'Partner' hourly rate is '£200.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£175.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£150.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£125.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£100.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£75.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£50.00'
    And the 'Legal Project Managers' hourly rate is '£162.50'
    And the contact details for the supplier are:
      | kulas_and_hintz_doyle@swaniawski.example    |
      | 651-767-4807                                |
      | http://kulashintzanddoyle.example/francesco |
      | 89395 Ross Rest, Jesusshire, UT 00890-9098  |
    And the prospectus link is 'http://kulashintzanddoyle.example/imelda_turcotte'
