@smoulder @production
Feature: Legal Panel for Government - Central governemnt - Supplier Comparison

  Background: Navigate to the select lot page
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

  Scenario Outline: Can compare suppliers - <lot_name>
    And I select '<lot_name>'
    And I click on 'Continue'
    And I am on the 'Select the legal specialisms you need' page
    And the sub title is '<lot_name>'
    Given I check '<service_name>'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal panel for government specialisms and I count them
    Then I click on 'Compare the supplier rates'
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check item 1
    When I check item 2
    When I check item 3
    Then I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    Then I should see the rates for the following roles:
      | Supplier | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Legal Project Managers |
    And I click on 'Back to results'
    Then I am on the 'Supplier results' page
    And I should see the same number of legal panel for government specialisms that I counted previously

    Examples:
      | lot_name                                  | service_name          |
      | Lot 1 - Core Legal Services               | Assimilated Law       |
      | Lot 2 - Major Projects and Complex Advice | Aviation and Airports |
      | Lot 3 - Finance and High Risk/Innovation  | Debt Capital Markets  |
      | Lot 5 - Rail Legal Services               | International law     |

  Scenario Outline: Can view results of the specialisms without country selection - <lot_name>
    And I select '<lot_name>'
    And I click on 'Continue'
    And I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is '<lot_name>'
    Given I select 'No'
    And I click on 'Continue'
    And I am on the 'Select the legal specialisms you need' page
    And the sub title is '<lot_name>'
    Given I check '<service_name>'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal panel for government specialisms and I count them
    Then I click on 'Compare the supplier rates'
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check item 1
    When I check item 2
    When I check item 3
    Then I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    Then I should see the rates for the following roles:
      | Supplier | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Legal Project Managers | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
    And I click on 'Back to results'
    Then I am on the 'Supplier results' page
    And I should see the same number of legal panel for government specialisms that I counted previously

    Examples:
      | lot_name                                   | service_name                     |
      | Lot 4a - Trade and Investment Negotiations | FTA chapters                     |
      | Lot 4b - International Trade Disputes      | International trade disputes     |
      | Lot 4c - International Investment Disputes | Treaty based investment disputes |

  Scenario Outline: Can view results of the specialisms with country selection - <lot_name>
    And I select '<lot_name>'
    And I click on 'Continue'
    And I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is '<lot_name>'
    Given I select 'Yes'
    And I click on 'Continue'
    And I am on the 'Select the countries for your requirement' page
    And the sub title is '<lot_name>'
    Given I check 'Equatorial Guinea'
    And I click on 'Continue'
    And I am on the 'Select the legal specialisms you need' page
    And the sub title is '<lot_name>'
    Given I check '<service_name>'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal panel for government specialisms and I count them
    Then I click on 'Compare the supplier rates'
    Then I am on the 'Have you reviewed the suppliers’ prospectus to inform your down-selection?' page
    And I 'have' reviewed the suppliers’ prospectus
    And I click on 'Continue'
    Then I am on the 'Select suppliers for comparison' page
    When I check item 1
    When I check item 2
    When I check item 3
    Then I click on 'Continue'
    Then I am on the 'Compare supplier rates' page
    And I should see that '3' suppliers have been selected for comparison
    Then I should see the rates for the following roles:
      | Supplier | Senior Counsel, Senior Partner (20 years +PQE) | Partner | Legal Director/Counsel or equivalent | Senior Solicitor, Senior Associate/Senior Legal Executive | Solicitor, Associate/Legal Executive | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | Trainee/Legal Apprentice | Paralegal, Legal Assistant | Legal Project Managers | Senior Analyst | Analyst, Associate Analyst, Research Associate, Research Officer | Senior Modeller, Senior Econometrician, Senior Analyst | Modeller, Econometrician, Analyst, Associate Analyst |
    And I click on 'Back to results'
    Then I am on the 'Supplier results' page
    And I should see the same number of legal panel for government specialisms that I counted previously

    Examples:
      | lot_name                                   | service_name                     |
      | Lot 4a - Trade and Investment Negotiations | FTA chapters                     |
      | Lot 4b - International Trade Disputes      | International trade disputes     |
      | Lot 4c - International Investment Disputes | Treaty based investment disputes |
