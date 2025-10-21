Feature: Facilities Management - Navigation links when signed in - without buyer details

  Background: I navigate to the start page
    When I go to the 'facilities management' start page for 'RM6378'
    And I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    And I am on the 'Sign in to your account' page
    Given I am a no details user
    Then I sign in
    And I am on the 'Your details' page

  @smoulder @production
  Scenario: Buyer details - Sign out
    And I should see the following navigation links:
      | Sign out |
    And I click on 'Sign out'
    And I am on the 'Sign in to your account' page

  Scenario: Buyer details - Manage details - Sign out
    And I click on 'Answer questions (Personal details)'
    Then I am on the 'Manage your personal details' page
    And I should see the following navigation links:
      | Sign out |
    And I click on 'Sign out'
    And I am on the 'Sign in to your account' page
