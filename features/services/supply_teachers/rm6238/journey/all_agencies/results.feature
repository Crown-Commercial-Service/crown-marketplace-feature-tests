Feature: Supply Teachers - All agencies

  Background: Navigate to the All agencies page
    Given I sign in and navigate to the start page for the 'RM6238' framework in 'supply teachers'
    And I select "A list of all agencies"
    And I click on 'Continue'
    Then I am on the 'Find an agency' page

  Scenario: All agencies search
    And a list of 10 agencies are shown
    And the listed agencies for all agencies are:
      | BARTOLETTI, KOEPP AND NIENOW |
      | CORKERY INC                  |
      | DIETRICH-BORER               |
      | EMARD AND SONS               |
      | FEEST-MULLER                 |
      | HAGENES-BECHTELAR            |
      | KERLUKE, TORP AND HEATHCOTE  |
      | MCGLYNN GROUP                |
      | STANTON, FADEL AND BOSCO     |
      | ZIEMANN-HERMANN              |
    And I enter "an" for the agency name search
    Then the listed agencies for all agencies are:
      | BARTOLETTI, KOEPP AND NIENOW |
      | EMARD AND SONS               |
      | KERLUKE, TORP AND HEATHCOTE  |
      | STANTON, FADEL AND BOSCO     |
      | ZIEMANN-HERMANN              |
    And I enter "" for the agency name search
    Then the listed agencies for all agencies are:
      | BARTOLETTI, KOEPP AND NIENOW |
      | CORKERY INC                  |
      | DIETRICH-BORER               |
      | EMARD AND SONS               |
      | FEEST-MULLER                 |
      | HAGENES-BECHTELAR            |
      | KERLUKE, TORP AND HEATHCOTE  |
      | MCGLYNN GROUP                |
      | STANTON, FADEL AND BOSCO     |
      | ZIEMANN-HERMANN              |
