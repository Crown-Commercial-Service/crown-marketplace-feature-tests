Feature: Management Consultancy - Lot 10 - Restructuring and insolvency - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6309' framework in 'management consultancy'
    Given I select 'Lot 10 - Restructuring and insolvency'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF4 lot 10 - Restructuring and insolvency'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '5' companies can provide consultants
    And the selected suppliers are:
      | ERNSER GROUP              |
      | KERLUKE, BODE AND LANG    |
      | MCCLURE, EMARD AND LITTLE |
      | REICHERT LLC              |
      | TORP GROUP                |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check 'Aviation'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '27' companies can provide consultants
    And the selected suppliers are:
      | BOYER, HEGMANN AND TURCOTTE    |
      | BRAKUS GROUP                   |
      | DAVIS, HALEY AND HAND          |
      | DIBBERT-ANKUNDING              |
      | ERNSER GROUP                   |
      | GERHOLD-RUNTE                  |
      | GUTMANN, LEMKE AND JOHNSTON    |
      | JENKINS INC                    |
      | JOHNSON GROUP                  |
      | KERLUKE, BODE AND LANG         |
      | KONOPELSKI AND SONS            |
      | KREIGER, SWIFT AND LEDNER      |
      | LANGWORTH-KEELING              |
      | LITTEL-WELCH                   |
      | MCCLURE, EMARD AND LITTLE      |
      | PAUCEK-HERMAN                  |
      | PROSACCO INC                   |
      | REICHEL-HODKIEWICZ             |
      | REICHERT LLC                   |
      | SHANAHAN LLC                   |
      | SIMONIS-FARRELL                |
      | STARK, KUHLMAN AND FAHEY       |
      | STIEDEMANN, ANKUNDING AND FUNK |
      | TORP GROUP                     |
      | WILLIAMSON GROUP               |
    And I click on 'Next'
    Then I am on the 'Supplier results' page
    And I should see that '27' companies can provide consultants
    And the selected suppliers are:
      | WINDLER, REICHERT AND HARBER |
      | WITTING, HANE AND WIEGAND    |
    And I click on 'Previous'
    Then I am on the 'Supplier results' page
    And I should see that '27' companies can provide consultants
    And the selected suppliers are:
      | BOYER, HEGMANN AND TURCOTTE    |
      | BRAKUS GROUP                   |
      | DAVIS, HALEY AND HAND          |
      | DIBBERT-ANKUNDING              |
      | ERNSER GROUP                   |
      | GERHOLD-RUNTE                  |
      | GUTMANN, LEMKE AND JOHNSTON    |
      | JENKINS INC                    |
      | JOHNSON GROUP                  |
      | KERLUKE, BODE AND LANG         |
      | KONOPELSKI AND SONS            |
      | KREIGER, SWIFT AND LEDNER      |
      | LANGWORTH-KEELING              |
      | LITTEL-WELCH                   |
      | MCCLURE, EMARD AND LITTLE      |
      | PAUCEK-HERMAN                  |
      | PROSACCO INC                   |
      | REICHEL-HODKIEWICZ             |
      | REICHERT LLC                   |
      | SHANAHAN LLC                   |
      | SIMONIS-FARRELL                |
      | STARK, KUHLMAN AND FAHEY       |
      | STIEDEMANN, ANKUNDING AND FUNK |
      | TORP GROUP                     |
      | WILLIAMSON GROUP               |

  Scenario: Going back from a supplier
    And I click on 'REICHERT LLC'
    Then I am on the 'REICHERT LLC' page
    And the sub title is 'MCF4 lot 10 - Restructuring and insolvency'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '5' companies can provide consultants
    And the selected suppliers are:
      | ERNSER GROUP              |
      | KERLUKE, BODE AND LANG    |
      | MCCLURE, EMARD AND LITTLE |
      | REICHERT LLC              |
      | TORP GROUP                |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '5' companies can provide consultants
    And the selected suppliers are:
      | ERNSER GROUP              |
      | KERLUKE, BODE AND LANG    |
      | MCCLURE, EMARD AND LITTLE |
      | REICHERT LLC              |
      | TORP GROUP                |
