Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 4c - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'CRUICKSHANK, WISOKY AND HARBER'
    Then I am on the 'Supplier lot data' page
    And the caption is 'CRUICKSHANK, WISOKY AND HARBER'
    And I click on 'View rates' for the lot 'Lot 4c - International Investment Disputes'
    Then I am on the 'Lot 4c - International Investment Disputes - Rates' page
    And the caption is 'CRUICKSHANK, WISOKY AND HARBER'
    And the rates in the 'Belarus' table are:
      | Position                                                           | Hourly  |
      | Senior Counsel, Senior Partner (20 years +PQE)                     | £225.00 |
      | Partner                                                            | £200.00 |
      | Legal Director/Counsel or equivalent                               | £175.00 |
      | Senior Solicitor, Senior Associate/Senior Legal Executive          | £150.00 |
      | Solicitor, Associate/Legal Executive                               | £125.00 |
      | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | £100.00 |
      | Trainee/Legal Apprentice                                           | £75.00  |
      | Paralegal, Legal Assistant                                         | £50.00  |
      | Senior Modeller, Senior Econometrician, Senior Analyst             | £150.00 |
      | Modeller, Econometrician, Analyst, Associate Analyst               | £125.00 |
    And the rates in the 'Sweden' table are:
      | Position                                                           | Hourly  |
      | Senior Counsel, Senior Partner (20 years +PQE)                     | £225.00 |
      | Partner                                                            | £200.00 |
      | Legal Director/Counsel or equivalent                               | £175.00 |
      | Senior Solicitor, Senior Associate/Senior Legal Executive          | £150.00 |
      | Solicitor, Associate/Legal Executive                               | £125.00 |
      | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | £100.00 |
      | Trainee/Legal Apprentice                                           | £75.00  |
      | Paralegal, Legal Assistant                                         | £50.00  |
      | Senior Modeller, Senior Econometrician, Senior Analyst             | £150.00 |
      | Modeller, Econometrician, Analyst, Associate Analyst               | £125.00 |
    And the rates in the 'United Kingdom' table are:
      | Position                                                           | Hourly  |
      | Senior Counsel, Senior Partner (20 years +PQE)                     | £315.00 |
      | Partner                                                            | £280.00 |
      | Legal Director/Counsel or equivalent                               | £245.00 |
      | Senior Solicitor, Senior Associate/Senior Legal Executive          | £210.00 |
      | Solicitor, Associate/Legal Executive                               | £175.00 |
      | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | £140.00 |
      | Trainee/Legal Apprentice                                           | £105.00 |
      | Paralegal, Legal Assistant                                         | £70.00  |
      | Senior Modeller, Senior Econometrician, Senior Analyst             | £210.00 |
      | Modeller, Econometrician, Analyst, Associate Analyst               | £175.00 |
