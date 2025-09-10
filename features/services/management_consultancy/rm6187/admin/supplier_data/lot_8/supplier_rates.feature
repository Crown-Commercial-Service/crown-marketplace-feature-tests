@skip-production
Feature: Management Consultancy - Admin - Supplier lot data - Lot 8 - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'GOYETTE-KOEPP'
    Then I am on the 'Supplier lot data' page
    And the caption is 'GOYETTE-KOEPP'
    And I click on 'View rates' for the lot 'Lot 8 - Infrastructure including Transport'
    Then I am on the 'Lot 8 - Infrastructure including Transport - Rates' page
    And the caption is 'GOYETTE-KOEPP'
    And the rates in the table are:
      | Position                                              | Max day rate |
      | Analyst / Junior Consultant                           | £800         |
      | Consultant                                            | £900         |
      | Senior Consultant / Engagement Manager / Project Lead | £1,000       |
      | Principal Consultant / Associate Director             | £1,500       |
      | Managing Consultant / Director                        | £3,000       |
      | Partner                                               | £3,950       |
