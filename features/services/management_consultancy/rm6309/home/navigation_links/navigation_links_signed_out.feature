Feature: Management Consultancy - Navigation links when signed out

  Background: I navigate to the start page
    When I go to the 'management consultancy' start page for 'RM6309'

  Scenario: Start page
    Then I should see the following navigation links:
      | Back to start |

  Scenario: Not permitted page
    And I go to the not permitted page for 'management consultancy'
    Then I should see the following navigation links:
      | Back to start |

  Scenario: Sign in page 
    And I click on 'Start now'
    Then I am on the 'Sign in to your management consultancy account' page
    And I should see the following navigation links:
      | Back to start |
    And I click on 'Back to start'
    And I am on the 'Find management consultants' page

  Scenario: Cookies policy
    When I click on 'Cookie policy'
    Then I am on the 'Details about cookies on Crown Marketplace' page
    And I should see the following navigation links:
      | Back to start |
    And I click on 'Back to start'
    And I am on the 'Find management consultants' page

  Scenario: Cookies settings
    When I click on 'Cookie settings'
    Then I am on the 'Cookies on Crown Marketplace' page
    And I should see the following navigation links:
      | Back to start |
    And I click on 'Back to start'
    And I am on the 'Find management consultants' page

  Scenario: Accessibility statement
    When I click on 'Accessibility statement'
    Then I am on the 'Management Consultancy (MC) Accessibility statement' page
    And I should see the following navigation links:
      | Back to start |
    And I click on 'Back to start'
    And I am on the 'Find management consultants' page
