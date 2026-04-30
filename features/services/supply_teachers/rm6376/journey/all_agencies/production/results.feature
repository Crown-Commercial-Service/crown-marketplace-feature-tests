Feature: Supply Teachers - All agencies - Production

  @smoulder @production
  Scenario: All agencies search - Production
    Given I sign in and navigate to the start page for the 'RM6376' framework in 'supply teachers'
    And I select "A list of all agencies"
    And I click on 'Continue'
    Then I am on the 'Find an agency' page
    And multiple agencies are shown and I count them
    And I enter "an" for the agency name search
    Then there is a reduced list in the number of agencies
    And I enter "B6 6HE" for the agency postcode search
    Then there is a reduced list in the number of agencies
    And I enter "" for the agency name search
    And I enter "" for the agency postcode search
    Then the origional list of agencies is shown
