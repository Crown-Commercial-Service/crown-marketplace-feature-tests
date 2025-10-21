Feature: Facilities Management - RM6378 - Buyer details

  Background: Navigate to Buyer Details page
    Given I sign in and navigate to the start page for the 'RM6378' framework in 'facilities management'
    Then I click on 'Manage my details'
    Then I am on the 'Your details' page
    And the following buyer details have been entered for 'Personal details':
      | Name             | Automation Tester |
      | Job title        | Tester            |
      | Telephone number | 07123456789       |
    And the following buyer details have been entered for 'Organisation details':
      | Organisation name                  | Crown Commercial Service             |
      | Organisation address               | 90 Old Hall Street, Liverpool L3 9PP |
      | Type of public sector organisation | Government Policy                    |
    And the following buyer details have been entered for 'Contact preferences':
      | CCS can contact you about searches? | Yes |

  Scenario: I can change my address
    And I click on 'Change (Organisation details)'
    When I click on 'Change address'
    And I enter the following details into the form:
      | Postcode | ST16 1AA |
    And I click on 'Find address'
    And I select 'The Goods Shed, Newport Road, Stafford' from the address drop down
    And I click on 'Save and return'
    And I am on the 'Your details' page
    And the following buyer details have been entered for 'Organisation details':
      | Organisation name                  | Crown Commercial Service                        |
      | Organisation address               | The Goods Shed, Newport Road, Stafford ST16 1AA |
      | Type of public sector organisation | Government Policy                               |
    And I click on 'Change (Organisation details)'
    When I click on 'Change address'
    And I enter the following details into the form:
      | Postcode | L3 9PP |
    And I click on 'Find address'
    And I select '90 Old Hall Street, Liverpoo' from the address drop down
    And I click on 'Save and return'
    And I am on the 'Your details' page
    And the following buyer details have been entered for 'Personal details':
      | Name             | Automation Tester |
      | Job title        | Tester            |
      | Telephone number | 07123456789       |
    And the following buyer details have been entered for 'Organisation details':
      | Organisation name                  | Crown Commercial Service             |
      | Organisation address               | 90 Old Hall Street, Liverpool L3 9PP |
      | Type of public sector organisation | Government Policy                    |
    And the following buyer details have been entered for 'Contact preferences':
      | CCS can contact you about searches? | Yes |

  @smoulder @production
  Scenario: Changes are kept when adding address manually
    And I click on 'Change (Organisation details)'
    When I click on 'Change address'
    And I enter the following details into the form:
      | Postcode | L3 9PP |
    And I click on 'Find address'
    And I click on 'Enter address manually'
    And I enter the following details into the form:
      | Address line 1 | 90 Old Hall Street |
      | Town or city   | Liverpool          |
    And I click on 'Save and return'
    Then I am on the 'Your details' page
    And the following buyer details have been entered for 'Organisation details':
      | Organisation name                  | Crown Commercial Service             |
      | Organisation address               | 90 Old Hall Street, Liverpool L3 9PP |
      | Type of public sector organisation | Government Policy                    |
