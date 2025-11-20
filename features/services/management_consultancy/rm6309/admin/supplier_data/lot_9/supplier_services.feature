Feature: Management Consultancy - Admin - Supplier lot data - Lot 9 - Services

  Scenario: Services
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'BRAKUS GROUP'
    Then I am on the 'Supplier lot data' page
    And the caption is 'BRAKUS GROUP'
    And I click on 'View services' for the lot 'Lot 9 - Environment and Sustainability'
    Then I am on the 'Lot 9 - Environment and Sustainability View services' page
    And the caption is 'BRAKUS GROUP'
    And the supplier should be assigned to the 'services' as follows:
      | Air quality                                                    |
      | Carbon net zero and/or carbon management (including reporting) |
      | Climate change adaptation and/or mitigation                    |
      | Contaminated land and water                                    |
      | Environmental planning and protection                          |
      | Environmental, social and governance (ESG)                     |
      | Life sciences                                                  |
      | Monitoring environmental indicators                            |
      | Natural resource management                                    |
      | Policy development and/or implementation                       |
      | Pollution control (including noise)                            |
      | Regulatory compliance                                          |
      | Waste management                                               |
