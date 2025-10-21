Feature: Legal Panel for Government - Non central governemnt - Lot 4a - Suppliers - Countries

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
    And I select 'Lot 4a - Trade and Investment Negotiations'
    And I click on 'Continue'
    Then I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the countries for your requirement' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    When I check the following items:
      | Finland     |
      | South Sudan |
    And I click on 'Continue'
    Then I am on the 'Select the legal specialisms you need' page
    And the sub title is 'Lot 4a - Trade and Investment Negotiations'
    When I check the following items:
      | Assimilated Law |
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '11' suppliers can provide legal specialisms for government
    And the selected legal service for government suppliers are:
      | ARMSTRONG GROUP                | http://armstronggroup.test/quincy                 |
      | BLICK GROUP                    | http://blickgroup.test/tiffiny                    |
      | COLLIER, AUFDERHAR AND VOLKMAN | http://collieraufderharandvolkman.test/avis.swift |
      | EMARD LLC                      | http://emardllc.example/jackson.pacocha           |
      | FISHER-BASHIRIAN               | http://fisher-bashirian.example/loriann           |
      | JOHNSON LLC                    | http://johnsonllc.example/gail                    |
      | KASSULKE, RITCHIE AND KOCH     | http://kassulkeritchieandkoch.example/rossie      |
      | SCHOWALTER GROUP               | http://schowaltergroup.example/lucienne_dare      |
      | SMITH-DOYLE                    | http://smith-doyle.example/genny_oconnell         |
      | STARK, ADAMS AND KOZEY         | http://starkadamsandkozey.example/clay_jerde      |
      | WELCH, PAGAC AND SWIFT         | http://welchpagacandswift.example/abram           |
    And I click on 'Compare the supplier rates'
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have not' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    Given I click on 'COLLIER, AUFDERHAR AND VOLKMAN' legal panel for governemnt supplier
    Then I am on the 'COLLIER, AUFDERHAR AND VOLKMAN' page
    And I click on 'Finland'
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
    And I click on 'South Sudan'
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
    And the 'Modeller, Econometrician, Analyst, Associate Analyst' hourly rate is '£180.00'
