Feature: Facilities Management - RM6378 - Select services

  Background: Navigate to the Services page
    Given I sign in and navigate to the start page for the 'RM6378' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'

  Scenario: Service selection appears in basked
    Then the facilities management basket should say 'No services selected'
    And the remove all link should not be visible
    When I check 'Building Management System (BMS) Maintenance'
    Then the facilities management basket should say '1 service selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Building Management System (BMS) Maintenance |
    When I check the following items:
      | Water Hygiene Maintenance                    |
      | Pest Control Services                        |
      | High Voltage (HV) and Switchgear Maintenance |
      | Additional Support Services                  |
      | Courier Booking and Distribution Services    |
      | Patrolling Services                          |
    Then the facilities management basket should say '7 services selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Building Management System (BMS) Maintenance |
      | Water Hygiene Maintenance                    |
      | Pest Control Services                        |
      | High Voltage (HV) and Switchgear Maintenance |
      | Additional Support Services                  |
      | Courier Booking and Distribution Services    |
      | Patrolling Services                          |

  @smoulder @production
  Scenario: Changing the selection will change the basket
    When I check the following items:
      | Water Hygiene Maintenance                    |
      | Pest Control Services                        |
      | High Voltage (HV) and Switchgear Maintenance |
      | Additional Support Services                  |
      | Courier Booking and Distribution Services    |
      | Patrolling Services                          |
    Then the facilities management basket should say '6 services selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Water Hygiene Maintenance                    |
      | Pest Control Services                        |
      | High Voltage (HV) and Switchgear Maintenance |
      | Additional Support Services                  |
      | Courier Booking and Distribution Services    |
      | Patrolling Services                          |
    When I deselect the following items:
      | Additional Support Services |
    Then the facilities management basket should say '5 services selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Water Hygiene Maintenance                    |
      | Pest Control Services                        |
      | High Voltage (HV) and Switchgear Maintenance |
      | Courier Booking and Distribution Services    |
      | Patrolling Services                          |
    When I remove the following items from the facilities management basket:
      | Pest Control Services                     |
      | Courier Booking and Distribution Services |
    Then the facilities management basket should say '3 services selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Water Hygiene Maintenance                    |
      | High Voltage (HV) and Switchgear Maintenance |
      | Patrolling Services                          |
    When I click on 'Remove all'
    Then the facilities management basket should say 'No services selected'

  Scenario: Select all checkbox
    When I select all for 'Security Officer Services'
    Then the facilities management basket should say '8 services selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Security Officer Services                             |
      | Video Surveillance Systems (VSS) and Alarm Monitoring |
      | Control of Access and Security Passes                 |
      | Control of Access - Vehicles                          |
      | Patrolling Services                                   |
      | Management of Visitors and Passes                     |
      | Additional Security Officer Services                  |
      | Key Holding                                           |
    When I remove the following items from the facilities management basket:
      | Control of Access - Vehicles |
    Then select all 'should not' be checked for 'Security Officer Services'
    When I check 'Control of Access - Vehicles'
    Then select all 'should' be checked for 'Security Officer Services'

  Scenario: Go back from regions and change selection
    When I check the following items:
      | Water Hygiene Maintenance                    |
      | Pest Control Services                        |
      | Building Management System (BMS) Maintenance |
      | Additional Support Services                  |
      | Courier Booking and Distribution Services    |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on the 'Return to services' back link
    Then I am on the 'Services' page
    And the following items should appear in the facilities management basket:
      | Building Management System (BMS) Maintenance |
      | Water Hygiene Maintenance                    |
      | Pest Control Services                        |
      | Courier Booking and Distribution Services    |
      | Additional Support Services                  |
