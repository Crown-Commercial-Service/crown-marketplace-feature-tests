Feature: Management Consultancy - Admin - Supplier lot data - Lot 10 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'PAUCEK-HERMAN'
    Then I am on the 'Supplier lot data' page
    And the caption is 'PAUCEK-HERMAN'
    And I click on 'View services' for the lot 'Lot 10 - Restructuring and insolvency'
    Then I am on the 'Lot 10 - Restructuring and insolvency - Services' page
    And the caption is 'PAUCEK-HERMAN'
    And the supplier should be assigned to the 'services' in 'Primary capabilities' as follows:
      | Service name                         | Has service? |
      | Accelerated Mergers and Acquisitions | No           |
      | Business review                      | No           |
      | Cash-flow review                     | Yes          |
      | Distressed debt restructuring        | No           |
      | General restructuring advice         | No           |
      | Insolvency contingency planning      | No           |
      | Options analysis                     | Yes          |
    And the supplier should be assigned to the 'services' in 'Additional capabilities' as follows:
      | Service name                                                     | Has service? |
      | Capital markets advice                                           | No           |
      | Economic consulting (Market Economy Operator Principle - “MEOP”) | Yes          |
      | International insolvency advice                                  | Yes          |
      | Pensions advisory                                                | Yes          |
      | Restructuring tax advice                                         | No           |
      | Special administration regimes                                   | Yes          |
    And the supplier should be assigned to the 'services' in 'Sector specialisms' as follows:
      | Service name                                                                                                                                                                                                                                                                 | Has service? |
      | Advanced manufacturing, which includes aerospace manufacturing, automotive manufacturing, computers and electrical equipment manufacturing, machinery and equipment manufacturing, shipbuilding, chemicals manufacturing, and space                                          | No           |
      | Aviation                                                                                                                                                                                                                                                                     | Yes          |
      | Business services, which includes outsourcing, professional services, recruitment services and facilities management                                                                                                                                                         | Yes          |
      | Construction                                                                                                                                                                                                                                                                 | No           |
      | Consumer, which includes retail, consumer goods, tourism, hospitality and leisure                                                                                                                                                                                            | Yes          |
      | Defence                                                                                                                                                                                                                                                                      | Yes          |
      | Education                                                                                                                                                                                                                                                                    | Yes          |
      | Energy, which includes electricity, gas markets, civil nuclear, oil and gas and refined petroleum products manufacturing                                                                                                                                                     | Yes          |
      | Financial services                                                                                                                                                                                                                                                           | No           |
      | Health and social care                                                                                                                                                                                                                                                       | Yes          |
      | Heavy industry, which includes agri-tech, cement manufacturing, construction material, ceramics, plastics manufacturing, rail manufacturing, paper manufacturing, mining, steel manufacturing, fabricated metal products manufacturing and other energy intensive industries | No           |
      | Local authorities                                                                                                                                                                                                                                                            | No           |
      | Sports and leisure                                                                                                                                                                                                                                                           | Yes          |
      | Technology, media and telecoms                                                                                                                                                                                                                                               | No           |
      | Transport (excluding aviation) which includes maritime and ports, road haulage and logistics, rail, warehousing and storage, and postal and courier services                                                                                                                 | Yes          |
      | Utilities                                                                                                                                                                                                                                                                    | Yes          |
