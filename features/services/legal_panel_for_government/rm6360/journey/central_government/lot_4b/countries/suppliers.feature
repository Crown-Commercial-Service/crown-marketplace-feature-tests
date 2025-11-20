Feature: Legal Panel for Government - Non central governemnt - Lot 4b - Suppliers - Countries

  Scenario: Check the supplier data for different counties
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
    And I select 'Lot 4b - International Trade Disputes'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the countries for your requirement' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Algeria        |
      | Cayman Islands |
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 4b - International Trade Disputes'
    When I check the following items:
      | Wider trading arrangements |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | BLICK GROUP                    | http://blickgroup.test/odis_schneider          |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/emile   |
      | DECKOW, KIEHN AND ORN          | http://deckowkiehnandorn.example/manual        |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/milton.klein   |
      | JOHNSON LLC                    | http://johnsonllc.example/rima                 |
      | PARKER, DIETRICH AND TREMBLAY  | http://parkerdietrichandtremblay.example/leana |
      | RUECKER AND SONS               | http://rueckerandsons.example/edmond_upton     |
      | RUSSEL AND SONS                | http://russelandsons.example/josiah            |
      | SHIELDS-D'AMORE                | http://shields-damore.example/piedad.collier   |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/corie        |
      | TOY-ROBERTS                    | http://toy-roberts.example/tiffanie_bruen      |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/dustin       |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have not' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    Given I click on "SHIELDS-D'AMORE" legal panel for governemnt supplier
    Then I am on the "SHIELDS-D'AMORE" page
    And I click on 'Algeria'
    And the 'Senior Counsel, Senior Partner (20 years +PQE)' hourly rate is '£315.00'
    And the 'Partner' hourly rate is '£280.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£245.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£210.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£175.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£140.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£105.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£70.00'
    And the 'Legal Project Managers' hourly rate is '£253.75'
    And the 'Senior Analyst' hourly rate is '£175.00'
    And the 'Analyst, Associate Analyst, Research Associate, Research Officer' hourly rate is '£140.00'
    And the 'Senior Modeller, Senior Econometrician, Senior Analyst' hourly rate is '£210.00'
    And the 'Modeller, Econometrician, Analyst, Associate Analyst' hourly rate is '£175.00'
    And I click on 'Cayman Islands'
    And the 'Senior Counsel, Senior Partner (20 years +PQE)' hourly rate is '£225.00'
    And the 'Partner' hourly rate is '£200.00'
    And the 'Legal Director/Counsel or equivalent' hourly rate is '£175.00'
    And the 'Senior Solicitor, Senior Associate/Senior Legal Executive' hourly rate is '£150.00'
    And the 'Solicitor, Associate/Legal Executive' hourly rate is '£125.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive' hourly rate is '£100.00'
    And the 'Trainee/Legal Apprentice' hourly rate is '£75.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£50.00'
    And the 'Legal Project Managers' hourly rate is '£181.25'
    And the 'Senior Analyst' hourly rate is '£125.00'
    And the 'Analyst, Associate Analyst, Research Associate, Research Officer' hourly rate is '£100.00'
    And the 'Senior Modeller, Senior Econometrician, Senior Analyst' hourly rate is '£150.00'
    And the 'Modeller, Econometrician, Analyst, Associate Analyst' hourly rate is '£125.00'
