Feature: Management Consultancy - Admin - Supplier lot data - Lot 10 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'PAUCEK-HERMAN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'PAUCEK-HERMAN'
    And I click on 'View services' for the lot 'Lot 10 - Restructuring and insolvency'
    Then I am on the 'Lot 10 - Restructuring and insolvency View services' page
    And the caption is 'PAUCEK-HERMAN'
    And the supplier should be assigned to the 'services' in 'Primary capabilities' as follows:
      | Cash-flow review |
      | Options analysis |
    And the supplier should be assigned to the 'services' in 'Additional capabilities' as follows:
      | Economic consulting (Market Economy Operator Principle - “MEOP”) |
      | International insolvency advice                                  |
      | Pensions advisory                                                |
      | Special administration regimes                                   |
    And the supplier should be assigned to the 'services' in 'Sector specialisms' as follows:
      | Aviation                                                                                                                                                     |
      | Business services, which includes outsourcing, professional services, recruitment services and facilities management                                         |
      | Consumer, which includes retail, consumer goods, tourism, hospitality and leisure                                                                            |
      | Defence                                                                                                                                                      |
      | Education                                                                                                                                                    |
      | Energy, which includes electricity, gas markets, civil nuclear, oil and gas and refined petroleum products manufacturing                                     |
      | Health and social care                                                                                                                                       |
      | Sports and leisure                                                                                                                                           |
      | Transport (excluding aviation) which includes maritime and ports, road haulage and logistics, rail, warehousing and storage, and postal and courier services |
      | Utilities                                                                                                                                                    |
