Feature: Facilities Management - RM6378 - Suppliers

  Background: Navigate to the results page
    Given I sign in and navigate to the start page for the 'RM6378' framework in 'facilities management'
    And I click on 'Search for suppliers'
    Then I am on the 'Services' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Mechanical and Electrical Engineering Maintenance                       |
      | Planned / Group re-lamping service                                      |
      | Building Information Modelling (BIM) and Government Soft Landings (GSL) |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Show all sections'
    Then I check the following items:
      | Tees Valley |
      | Essex       |
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I enter '123456' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in the following sub-lots:
      | 2a |
    And I should see the following 'services' in the selection summary:
      | Mechanical and Electrical Engineering Maintenance                       |
      | Planned / Group re-lamping service                                      |
      | Building Information Modelling (BIM) and Government Soft Landings (GSL) |
    And I should see the following 'regions' in the selection summary:
      | Tees Valley |
      | Essex       |
    And I should see the following 'annual contract cost' in the selection summary:
      | £123,456 |
    And the selected facilities management suppliers are:
      | BEIER INC                   |
      | DONNELLY-KOHLER             |
      | FEENEY AND SONS             |
      | GLEASON INC                 |
      | HAYES, MURRAY AND PAGAC     |
      | HOWELL LLC                  |
      | KEMMER GROUP                |
      | MAYER INC                   |
      | PFANNERSTILL-DICKENS        |
      | SCHMITT, STANTON AND MAGGIO |
      | TORPHY AND SONS             |

  Scenario: Service selection changes the results
    Given I change the 'services' from the selection summary
    Then I am on the 'Services' page
    And I check 'Security Helpdesk Services'
    And I check 'Security Advisory Services'
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in the following sub-lots:
      | 2a |
      | 4a |
    And I should see the following 'services' in the selection summary:
      | Mechanical and Electrical Engineering Maintenance                       |
      | Planned / Group re-lamping service                                      |
      | Building Information Modelling (BIM) and Government Soft Landings (GSL) |
      | Security Helpdesk Services                                              |
      | Security Advisory Services                                              |
    And I click on 'Sub-lot 2a'
    And the selected facilities management suppliers are:
      | BEIER INC                   |
      | DONNELLY-KOHLER             |
      | FEENEY AND SONS             |
      | GLEASON INC                 |
      | HAYES, MURRAY AND PAGAC     |
      | HOWELL LLC                  |
      | KEMMER GROUP                |
      | MAYER INC                   |
      | PFANNERSTILL-DICKENS        |
      | SCHMITT, STANTON AND MAGGIO |
      | TORPHY AND SONS             |
    And I click on 'Sub-lot 4a'
    And the selected facilities management suppliers are:
      | DONNELLY-KOHLER         |
      | FEENEY AND SONS         |
      | GLEASON INC             |
      | HAYES, MURRAY AND PAGAC |
      | HOWELL LLC              |
      | KEMMER GROUP            |
      | MAYER INC               |
      | PFANNERSTILL-DICKENS    |
      | TORPHY AND SONS         |

  Scenario: Secuirty service selection changes the results
    Given I change the 'services' from the selection summary
    Then I am on the 'Services' page
    And I deselect the following items:
      | Building Information Modelling (BIM) and Government Soft Landings (GSL) |
    And I check 'Trolley service'
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in the following sub-lots:
      | 1a |
    And I should see the following 'services' in the selection summary:
      | Mechanical and Electrical Engineering Maintenance |
      | Planned / Group re-lamping service                |
      | Trolley service                                   |
    And the selected facilities management suppliers are:
      | BEIER INC                   |
      | DONNELLY-KOHLER             |
      | FEENEY AND SONS             |
      | GLEASON INC                 |
      | HAYES, MURRAY AND PAGAC     |
      | HOWELL LLC                  |
      | KEMMER GROUP                |
      | LABADIE-WATERS              |
      | MAYER INC                   |
      | PFANNERSTILL-DICKENS        |
      | SCHMITT, STANTON AND MAGGIO |
      | TORPHY AND SONS             |

  Scenario: Region selection changes the results
    Given I change the 'regions' from the selection summary
    Then I am on the 'Regions' page
    And I deselect the following items:
      | Essex |
    And I check 'Cumbria'
    And I click on 'Continue'
    Then I am on the 'Annual contract cost' page
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in the following sub-lots:
      | 2a |
    And I should see the following 'regions' in the selection summary:
      | Tees Valley |
      | Cumbria     |
    And the selected facilities management suppliers are:
      | BEIER INC                   |
      | DONNELLY-KOHLER             |
      | FEENEY AND SONS             |
      | GLEASON INC                 |
      | HAYES, MURRAY AND PAGAC     |
      | HOWELL LLC                  |
      | KEMMER GROUP                |
      | MAYER INC                   |
      | MOEN, WILL AND BEIER        |
      | PFANNERSTILL-DICKENS        |
      | SCHMITT, STANTON AND MAGGIO |
      | TORPHY AND SONS             |

  Scenario: Annual contract cost  changes the results
    Given I change the 'annual contract cost' from the selection summary
    Then I am on the 'Annual contract cost' page
    And I enter '123456789' for the annual contract cost
    And I click on 'Continue'
    Then I am on the 'Results' page
    And I should be in the following sub-lots:
      | 2b |
    And I should see the following 'annual contract cost' in the selection summary:
      | £123,456,789 |
    And the selected facilities management suppliers are:
      | BEIER INC                   |
      | BERNIER-MILLER              |
      | DENESIK, REMPEL AND ORN     |
      | DONNELLY-KOHLER             |
      | FEENEY AND SONS             |
      | GREEN-LEUSCHKE              |
      | KREIGER, BORER AND ORN      |
      | MOEN, WILL AND BEIER        |
      | PFANNERSTILL-DICKENS        |
      | PFEFFER, HOWELL AND REINGER |
      | SCHMITT, STANTON AND MAGGIO |
