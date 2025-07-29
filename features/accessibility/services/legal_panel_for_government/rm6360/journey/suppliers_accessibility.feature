@accessibility
Feature: Legal Panel for Government - Non central government - Accessibility

  Background: Login and then navigate to the select the lot you need page
    Given I sign in and navigate to the start page for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Do you work for central government?' page

  Scenario Outline: Results page - Lots 1, 2, 3 and 5
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '<number_of_suppliers>' suppliers can provide legal services
    Then the page should be axe clean excluding ".ccs-contact-us"

    Examples:
      | lot                                       | service           | number_of_suppliers |
      | Lot 1 - Core Legal Services               | Assimilated Law   | 11                  |
      | Lot 2 - Major Projects and Complex Advice | Assimilated Law   | 12                  |
      | Lot 3 - Finance and High Risk/Innovation  | Corporate Finance | 16                  |
      | Lot 5 - Rail Legal Services               | Competition law   | 14                  |

  Scenario Outline: Results page - Lot 4
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is '<lot>'
    And I select 'No'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '<number_of_suppliers>' suppliers can provide legal services
    Then the page should be axe clean excluding ".ccs-contact-us"

    Examples:
      | lot                                         | service                                 | number_of_suppliers |
      | Lot 4a - Trade and Investment Negotiations  | Assimilated Law                         | 10                  |
      | Lot 4b - International Trade Disputes       | Compliance with international law       | 11                  |
      | Lot 4c - International Investment Disputes  | Domestic law of jurisdictions for trade | 12                  |

  Scenario Outline: Suppliers page - Lots 1, 2, 3 and 5
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '<number_of_suppliers>' suppliers can provide legal services
    And I click on '<supplier_name>'
    Then I am on the '<supplier_name>' page
    Then the page should be axe clean excluding ".ccs-contact-us"

    Examples:
      | lot                                       | service           | number_of_suppliers | supplier_name           |
      | Lot 1 - Core Legal Services               | Assimilated Law   | 11                  | DOUGLAS GROUP           |
      | Lot 2 - Major Projects and Complex Advice | Assimilated Law   | 12                  | REICHERT-MRAZ           |
      | Lot 3 - Finance and High Risk/Innovation  | Corporate Finance | 16                  | KULAS, HINTZ AND DOYLE  |
      | Lot 5 - Rail Legal Services               | Competition law   | 14                  | DECKOW, KIEHN AND ORN   |

  Scenario Outline: Suppliers page - Lot 4
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is '<lot>'
    And I select 'No'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '<number_of_suppliers>' suppliers can provide legal services
    And I click on '<supplier_name>'
    Then I am on the '<supplier_name>' page
    Then the page should be axe clean excluding ".ccs-contact-us"

    Examples:
      | lot                                         | service                                 | number_of_suppliers | supplier_name             |
      | Lot 4a - Trade and Investment Negotiations  | Assimilated Law                         | 10                  | LARSON, KLEIN AND WUNSCH  |
      | Lot 4b - International Trade Disputes       | Compliance with international law       | 11                  | ZIEMANN-CUMMERATA         |
      | Lot 4c - International Investment Disputes  | Domestic law of jurisdictions for trade | 12                  | TOY-ROBERTS               |

  Scenario Outline: Download supplier list page - Lots 1, 2, 3 and 5
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '<number_of_suppliers>' suppliers can provide legal services
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    Then the page should be axe clean excluding ".ccs-contact-us"

    Examples:
      | lot                                       | service           | number_of_suppliers |
      | Lot 1 - Core Legal Services               | Assimilated Law   | 11                  |
      | Lot 2 - Major Projects and Complex Advice | Assimilated Law   | 12                  |
      | Lot 3 - Finance and High Risk/Innovation  | Corporate Finance | 16                  |
      | Lot 5 - Rail Legal Services               | Competition law   | 14                  |

  Scenario Outline: Download supplier list page - Lot 4
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Is your requirement for a location outside of the countries listed below?' page
    And the sub title is '<lot>'
    And I select 'No'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '<number_of_suppliers>' suppliers can provide legal services
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    Then the page should be axe clean excluding ".ccs-contact-us"

    Examples:
      | lot                                         | service                                 | number_of_suppliers |
      | Lot 4a - Trade and Investment Negotiations  | Assimilated Law                         | 10                  |
      | Lot 4b - International Trade Disputes       | Compliance with international law       | 11                  |
      | Lot 4c - International Investment Disputes  | Domestic law of jurisdictions for trade | 12                  |
