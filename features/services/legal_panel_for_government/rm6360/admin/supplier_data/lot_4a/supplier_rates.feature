@skip-production
Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 4a - Rates

  Scenario: Rates
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'BLICK GROUP'
    Then I am on the 'Supplier lot data' page
    And the caption is 'BLICK GROUP'
    And I click on 'View rates' for the lot 'Lot 4a - Trade and Investment Negotiations'
    Then I am on the 'Lot 4a - Trade and Investment Negotiations - Rates' page
    And the caption is 'BLICK GROUP'
    And the rates in the 'Benin' table are:
      | Position                                                           | Hourly  |
      | Senior Counsel, Senior Partner (20 years +PQE)                     | £315.00 |
      | Partner                                                            | £280.00 |
      | Legal Director/Counsel or equivalent                               | £245.00 |
      | Senior Solicitor, Senior Associate/Senior Legal Executive          | £210.00 |
      | Solicitor, Associate/Legal Executive                               | £175.00 |
      | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | £140.00 |
      | Trainee/Legal Apprentice                                           | £105.00 |
      | Paralegal, Legal Assistant                                         | £70.00  |
      | Senior Analyst                                                     | £175.00 |
      | Analyst, Associate Analyst, Research Associate, Research Officer   | £140.00 |
      | Senior Modeller, Senior Econometrician, Senior Analyst             | £210.00 |
      | Modeller, Econometrician, Analyst, Associate Analyst               | £210.00 |
    And the rates in the 'Paraguay' table are:
      | Position                                                           | Hourly  |
      | Senior Counsel, Senior Partner (20 years +PQE)                     | £225.00 |
      | Partner                                                            | £200.00 |
      | Legal Director/Counsel or equivalent                               | £175.00 |
      | Senior Solicitor, Senior Associate/Senior Legal Executive          | £150.00 |
      | Solicitor, Associate/Legal Executive                               | £125.00 |
      | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | £100.00 |
      | Trainee/Legal Apprentice                                           | £75.00  |
      | Paralegal, Legal Assistant                                         | £50.00  |
      | Senior Analyst                                                     | £125.00 |
      | Analyst, Associate Analyst, Research Associate, Research Officer   | £100.00 |
      | Senior Modeller, Senior Econometrician, Senior Analyst             | £150.00 |
      | Modeller, Econometrician, Analyst, Associate Analyst               | £150.00 |
    And the rates in the 'United Kingdom' table are:
      | Position                                                           | Hourly  |
      | Senior Counsel, Senior Partner (20 years +PQE)                     | £270.00 |
      | Partner                                                            | £240.00 |
      | Legal Director/Counsel or equivalent                               | £210.00 |
      | Senior Solicitor, Senior Associate/Senior Legal Executive          | £180.00 |
      | Solicitor, Associate/Legal Executive                               | £150.00 |
      | NQ Solicitor/Associate, Junior Solicitor/Associate/Legal Executive | £120.00 |
      | Trainee/Legal Apprentice                                           | £90.00  |
      | Paralegal, Legal Assistant                                         | £60.00  |
      | Senior Analyst                                                     | £150.00 |
      | Analyst, Associate Analyst, Research Associate, Research Officer   | £120.00 |
      | Senior Modeller, Senior Econometrician, Senior Analyst             | £180.00 |
      | Modeller, Econometrician, Analyst, Associate Analyst               | £180.00 |
