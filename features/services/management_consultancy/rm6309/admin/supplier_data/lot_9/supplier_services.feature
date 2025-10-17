Feature: Management Consultancy - Admin - Supplier lot data - Lot 9 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'BRAKUS GROUP'
    Then I am on the 'Supplier lot data' page
    And the caption is 'BRAKUS GROUP'
    And I click on 'View services' for the lot 'Lot 9 - Environment and Sustainability'
    Then I am on the 'Lot 9 - Environment and Sustainability - Services' page
    And the caption is 'BRAKUS GROUP'
    And the supplier should be assigned to the 'services' as follows:
      | Service name                                                   | Has service? |
      | Air quality                                                    | Yes          |
      | Carbon net zero and/or carbon management (including reporting) | Yes          |
      | Climate change adaptation and/or mitigation                    | Yes          |
      | Coastal                                                        | No           |
      | Contaminated land and water                                    | Yes          |
      | Due diligence                                                  | No           |
      | Environmental planning and protection                          | Yes          |
      | Environmental, social and governance (ESG)                     | Yes          |
      | Feasibility studies and/or impact assessment                   | No           |
      | Life sciences                                                  | Yes          |
      | Monitoring environmental indicators                            | Yes          |
      | Natural capital                                                | No           |
      | Natural resource management                                    | Yes          |
      | Policy development and/or implementation                       | Yes          |
      | Pollution control (including noise)                            | Yes          |
      | Regulatory compliance                                          | Yes          |
      | Sustainability                                                 | No           |
      | Waste management                                               | Yes          |
