Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 4c - Jurisdictions

  Scenario: Jurisdictions
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'Manage supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'CRUICKSHANK, WISOKY AND HARBER'
    Then I am on the 'Supplier lot data' page
    And the caption is 'CRUICKSHANK, WISOKY AND HARBER'
    And I click on 'View jurisdictions' for the lot 'Lot 4c - International Investment Disputes'
    Then I am on the 'Lot 4c - International Investment Disputes View jurisdictions' page
    And the caption is 'CRUICKSHANK, WISOKY AND HARBER'
    And the supplier should be assigned to the 'jurisdictions' as follows:
      | Afghanistan                          |
      | Algeria                              |
      | American Samoa                       |
      | Azerbaijan                           |
      | Belarus                              |
      | Botswana                             |
      | Brazil                               |
      | Burundi                              |
      | Central African Republic             |
      | Chile                                |
      | Colombia                             |
      | Comoros                              |
      | Congo (Democratic Republic)          |
      | Cook Islands                         |
      | Costa Rica                           |
      | Côte d'Ivoire                        |
      | Curaçao                              |
      | Dominica                             |
      | Falkland Islands                     |
      | Faroe Islands                        |
      | Finland                              |
      | French Guiana                        |
      | French Polynesia                     |
      | Georgia                              |
      | Greenland                            |
      | Guadeloupe                           |
      | Guyana                               |
      | Haiti                                |
      | Hong Kong                            |
      | Hungary                              |
      | Iraq                                 |
      | Isle of Man                          |
      | Jamaica                              |
      | Jersey                               |
      | Kenya                                |
      | Lebanon                              |
      | Liechtenstein                        |
      | Madagascar                           |
      | Malawi                               |
      | Mali                                 |
      | Marshall Islands                     |
      | Moldova                              |
      | Monaco                               |
      | Mozambique                           |
      | Namibia                              |
      | New Caledonia                        |
      | Niue                                 |
      | Norfolk Island                       |
      | North Macedonia                      |
      | Palau                                |
      | Peru                                 |
      | Romania                              |
      | Samoa                                |
      | Serbia                               |
      | Sierra Leone                         |
      | Slovakia                             |
      | Slovenia                             |
      | South Africa                         |
      | South Korea                          |
      | South Sudan                          |
      | Sri Lanka                            |
      | St Vincent and the Grenadines        |
      | Suriname                             |
      | Sweden                               |
      | Taiwan                               |
      | The Bahamas                          |
      | Timor-Leste                          |
      | Togo                                 |
      | Tokelau                              |
      | Turkmenistan                         |
      | Ukraine                              |
      | United States Minor Outlying Islands |
      | Uruguay                              |
      | Uzbekistan                           |
      | Vatican City                         |
      | Vietnam                              |
      | Wallis and Futuna                    |
      | Zambia                               |
