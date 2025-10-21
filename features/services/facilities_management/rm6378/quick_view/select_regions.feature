Feature: Facilities Management - RM6378 - Select regions

  Background: Navigate to the Regions page
    Given I sign in and navigate to the start page for the 'RM6378' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    And I check 'Building Management System (BMS) maintenance'
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'

  Scenario: Region selection appears in basked
    Then the facilities management basket should say 'No regions selected'
    And the remove all link should not be visible
    When I check 'Tees Valley'
    Then the facilities management basket should say '1 region selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Tees Valley (TLC3) |
    When I check the following items:
      | Lancashire                  |
      | Essex                       |
      | Inner London - West         |
      | Inner London - East         |
      | Gwynedd                     |
      | East Lothian and Midlothian |
      | Belfast                     |
    Then the facilities management basket should say '8 regions selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Tees Valley (TLC3)                  |
      | Lancashire (TLD4)                   |
      | Essex (TLH3)                        |
      | Inner London - West (TLI3)          |
      | Inner London - East (TLI4)          |
      | Gwynedd (TLL32)                     |
      | East Lothian and Midlothian (TLM11) |
      | Belfast (TLN06)                     |

  @smoulder @production
  Scenario: Changing the selection will change the basket
    When I check the following items:
      | Essex                       |
      | Inner London - West         |
      | Inner London - East         |
      | Gwynedd                     |
      | East Lothian and Midlothian |
    Then the facilities management basket should say '5 regions selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Essex (TLH3)                        |
      | Inner London - West (TLI3)          |
      | Inner London - East (TLI4)          |
      | Gwynedd (TLL32)                     |
      | East Lothian and Midlothian (TLM11) |
    When I deselect the following items:
      | Inner London - West |
    Then the facilities management basket should say '4 regions selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Essex (TLH3)                        |
      | Inner London - East (TLI4)          |
      | Gwynedd (TLL32)                     |
      | East Lothian and Midlothian (TLM11) |
    When I remove the following items from the facilities management basket:
      | Essex   |
      | Gwynedd |
    Then the facilities management basket should say '2 regions selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Inner London - East (TLI4)          |
      | East Lothian and Midlothian (TLM11) |
    When I click on 'Remove all'
    Then the facilities management basket should say 'No regions selected'

  Scenario: Select all checkbox
    When I select all for 'East of England'
    Then the facilities management basket should say '5 regions selected'
    And the remove all link should be visible
    And the following items should appear in the facilities management basket:
      | Bedfordshire and Hertfordshire (TLH2)  |
      | Essex (TLH3)                           |
      | Cambridgeshire and Peterborough (TLH4) |
      | Norfolk (TLH5)                         |
      | Suffolk (TLH6)                         |
    When I remove the following items from the facilities management basket:
      | Bedfordshire and Hertfordshire |
    Then select all 'should not' be checked for 'East of England'
    When I check 'Bedfordshire and Hertfordshire'
    Then select all 'should' be checked for 'East of England'

  Scenario: Go back from regions and change selection
    When I check the following items:
      | Essex                       |
      | Gwynedd                     |
      | Inner London - East         |
      | East Lothian and Midlothian |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I click on the 'Return to regions' back link
    Then I am on the 'Regions' page
    And the following items should appear in the facilities management basket:
      | Essex (TLH3)                        |
      | Inner London - East (TLI4)          |
      | Gwynedd (TLL32)                     |
      | East Lothian and Midlothian (TLM11) |
