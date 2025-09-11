@skip-production
Feature: Management Consultancy - Admin - Supplier lot data - Lot 6 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'ABSHIRE, QUITZON AND HOWE'
    Then I am on the 'Supplier lot data' page
    And the caption is 'ABSHIRE, QUITZON AND HOWE'
    And I click on 'View services' for the lot 'Lot 6 - Procurement and Supply Chain'
    Then I am on the 'Lot 6 - Procurement and Supply Chain - Services' page
    And the caption is 'ABSHIRE, QUITZON AND HOWE'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                           | Has service? |
      | Category management                    | Yes          |
      | Commercial review and benchmarking     | Yes          |
      | Contract and/or supplier management    | Yes          |
      | Cost reduction                         | Yes          |
      | Financial advice                       | Yes          |
      | Game theory                            | Yes          |
      | Operations, supply chain and logistics | Yes          |
      | Outsourcing and insourcing             | Yes          |
      | Procurement process including P2P      | Yes          |
      | Procurement regulation                 | Yes          |
      | Sourcing                               | Yes          |
      | Tender development and analysis        | Yes          |
