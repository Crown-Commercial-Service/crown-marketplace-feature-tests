Feature: Legal Panel for Government - Admin - Supplier lot data - Lot 4c - Jurisdictions

  Scenario: Jurisdictions
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    And I click on 'View supplier data'
    Then I am on the 'Supplier data' page
    And I click on 'View lot data' for 'CRUICKSHANK, WISOKY AND HARBER'
    Then I am on the 'Supplier lot data' page
    And the caption is 'CRUICKSHANK, WISOKY AND HARBER'
    And I click on 'View jurisdictions' for the lot 'Lot 4c - International Investment Disputes'
    Then I am on the 'Lot 4c - International Investment Disputes - Jurisdictions' page
    And the caption is 'CRUICKSHANK, WISOKY AND HARBER'
    And the supplier should be assigned to the 'jurisdictions' as follows:
      | Jurisdiction                                 | Provides services in jurisdiction? |
      | Afghanistan                                  | Yes                                |
      | Åland Islands                                | No                                 |
      | Albania                                      | No                                 |
      | Algeria                                      | Yes                                |
      | American Samoa                               | Yes                                |
      | Andorra                                      | No                                 |
      | Angola                                       | No                                 |
      | Anguilla                                     | No                                 |
      | Antarctica                                   | No                                 |
      | Antigua and Barbuda                          | No                                 |
      | Argentina                                    | No                                 |
      | Armenia                                      | No                                 |
      | Aruba                                        | No                                 |
      | Australia                                    | No                                 |
      | Austria                                      | No                                 |
      | Azerbaijan                                   | Yes                                |
      | Bahrain                                      | No                                 |
      | Bangladesh                                   | No                                 |
      | Barbados                                     | No                                 |
      | Belarus                                      | Yes                                |
      | Belize                                       | No                                 |
      | Benin                                        | No                                 |
      | Bermuda                                      | No                                 |
      | Bhutan                                       | No                                 |
      | Bolivia                                      | No                                 |
      | Bonaire, Sint Eustatius and Saba             | No                                 |
      | Bosnia and Herzegovina                       | No                                 |
      | Botswana                                     | Yes                                |
      | Bouvet Island                                | No                                 |
      | Brazil                                       | Yes                                |
      | British Indian Ocean Territory               | No                                 |
      | British Virgin Islands                       | No                                 |
      | Brunei                                       | No                                 |
      | Bulgaria                                     | No                                 |
      | Burkina Faso                                 | No                                 |
      | Burundi                                      | Yes                                |
      | Cabo Verde                                   | No                                 |
      | Cambodia                                     | No                                 |
      | Cameroon                                     | No                                 |
      | Cayman Islands                               | No                                 |
      | Central African Republic                     | Yes                                |
      | Chad                                         | No                                 |
      | Chile                                        | Yes                                |
      | China                                        | No                                 |
      | Christmas Island                             | No                                 |
      | Cocos (Keeling) Islands                      | No                                 |
      | Colombia                                     | Yes                                |
      | Comoros                                      | Yes                                |
      | Congo                                        | No                                 |
      | Congo (Democratic Republic)                  | Yes                                |
      | Cook Islands                                 | Yes                                |
      | Costa Rica                                   | Yes                                |
      | Côte d'Ivoire                                | Yes                                |
      | Croatia                                      | No                                 |
      | Cuba                                         | No                                 |
      | Curaçao                                      | Yes                                |
      | Cyprus                                       | No                                 |
      | Czechia                                      | No                                 |
      | Denmark                                      | No                                 |
      | Djibouti                                     | No                                 |
      | Dominica                                     | Yes                                |
      | Dominican Republic                           | No                                 |
      | Ecuador                                      | No                                 |
      | Egypt                                        | No                                 |
      | El Salvador                                  | No                                 |
      | Equatorial Guinea                            | No                                 |
      | Eritrea                                      | No                                 |
      | Estonia                                      | No                                 |
      | Eswatini                                     | No                                 |
      | Ethiopia                                     | No                                 |
      | Falkland Islands                             | Yes                                |
      | Faroe Islands                                | Yes                                |
      | Federated States of Micronesia               | No                                 |
      | Fiji                                         | No                                 |
      | Finland                                      | Yes                                |
      | French Guiana                                | Yes                                |
      | French Polynesia                             | Yes                                |
      | French Southern Territories                  | No                                 |
      | Gabon                                        | No                                 |
      | Georgia                                      | Yes                                |
      | Ghana                                        | No                                 |
      | Gibraltar                                    | No                                 |
      | Greece                                       | No                                 |
      | Greenland                                    | Yes                                |
      | Grenada                                      | No                                 |
      | Guadeloupe                                   | Yes                                |
      | Guam                                         | No                                 |
      | Guatemala                                    | No                                 |
      | Guernsey                                     | No                                 |
      | Guinea                                       | No                                 |
      | Guinea-Bissau                                | No                                 |
      | Guyana                                       | Yes                                |
      | Haiti                                        | Yes                                |
      | Heard Island and McDonald Islands            | No                                 |
      | Honduras                                     | No                                 |
      | Hong Kong                                    | Yes                                |
      | Hungary                                      | Yes                                |
      | Iceland                                      | No                                 |
      | India                                        | No                                 |
      | Indonesia                                    | No                                 |
      | Iran                                         | No                                 |
      | Iraq                                         | Yes                                |
      | Isle of Man                                  | Yes                                |
      | Israel                                       | No                                 |
      | Italy                                        | No                                 |
      | Jamaica                                      | Yes                                |
      | Japan                                        | No                                 |
      | Jersey                                       | Yes                                |
      | Jordan                                       | No                                 |
      | Kazakhstan                                   | No                                 |
      | Kenya                                        | Yes                                |
      | Kiribati                                     | No                                 |
      | Kuwait                                       | No                                 |
      | Kyrgyzstan                                   | No                                 |
      | Laos                                         | No                                 |
      | Latvia                                       | No                                 |
      | Lebanon                                      | Yes                                |
      | Lesotho                                      | No                                 |
      | Liberia                                      | No                                 |
      | Libya                                        | No                                 |
      | Liechtenstein                                | Yes                                |
      | Lithuania                                    | No                                 |
      | Luxembourg                                   | No                                 |
      | Macao                                        | No                                 |
      | Madagascar                                   | Yes                                |
      | Malawi                                       | Yes                                |
      | Malaysia                                     | No                                 |
      | Maldives                                     | No                                 |
      | Mali                                         | Yes                                |
      | Malta                                        | No                                 |
      | Marshall Islands                             | Yes                                |
      | Martinique                                   | No                                 |
      | Mauritania                                   | No                                 |
      | Mauritius                                    | No                                 |
      | Mayotte                                      | No                                 |
      | Mexico                                       | No                                 |
      | Moldova                                      | Yes                                |
      | Monaco                                       | Yes                                |
      | Mongolia                                     | No                                 |
      | Montenegro                                   | No                                 |
      | Montserrat                                   | No                                 |
      | Morocco                                      | No                                 |
      | Mozambique                                   | Yes                                |
      | Myanmar (Burma)                              | No                                 |
      | Namibia                                      | Yes                                |
      | Nauru                                        | No                                 |
      | Nepal                                        | No                                 |
      | Netherlands                                  | No                                 |
      | New Caledonia                                | Yes                                |
      | New Zealand                                  | No                                 |
      | Nicaragua                                    | No                                 |
      | Niger                                        | No                                 |
      | Nigeria                                      | No                                 |
      | Niue                                         | Yes                                |
      | Norfolk Island                               | Yes                                |
      | Northern Mariana Islands                     | No                                 |
      | North Korea                                  | No                                 |
      | North Macedonia                              | Yes                                |
      | Norway                                       | No                                 |
      | Oman                                         | No                                 |
      | Pakistan                                     | No                                 |
      | Palau                                        | Yes                                |
      | Panama                                       | No                                 |
      | Papua New Guinea                             | No                                 |
      | Paraguay                                     | No                                 |
      | Peru                                         | Yes                                |
      | Philippines                                  | No                                 |
      | Pitcairn                                     | No                                 |
      | Poland                                       | No                                 |
      | Portugal                                     | No                                 |
      | Puerto Rico                                  | No                                 |
      | Qatar                                        | No                                 |
      | Réunion                                      | No                                 |
      | Romania                                      | Yes                                |
      | Russia                                       | No                                 |
      | Rwanda                                       | No                                 |
      | Samoa                                        | Yes                                |
      | San Marino                                   | No                                 |
      | Sao Tome and Principe                        | No                                 |
      | Saudi Arabia                                 | No                                 |
      | Senegal                                      | No                                 |
      | Serbia                                       | Yes                                |
      | Seychelles                                   | No                                 |
      | Sierra Leone                                 | Yes                                |
      | Sint Maarten (Dutch part)                    | No                                 |
      | Slovakia                                     | Yes                                |
      | Slovenia                                     | Yes                                |
      | Solomon Islands                              | No                                 |
      | Somalia                                      | No                                 |
      | South Africa                                 | Yes                                |
      | South Georgia and the South Sandwich Islands | No                                 |
      | South Korea                                  | Yes                                |
      | South Sudan                                  | Yes                                |
      | Spain                                        | No                                 |
      | Sri Lanka                                    | Yes                                |
      | State of Palestine                           | No                                 |
      | St Barthélemy                                | No                                 |
      | St Helena, Ascension and Tristan da Cunha    | No                                 |
      | St Kitts and Nevis                           | No                                 |
      | St Lucia                                     | No                                 |
      | St Martin (French part)                      | No                                 |
      | St Pierre and Miquelon                       | No                                 |
      | St Vincent and the Grenadines                | Yes                                |
      | Sudan                                        | No                                 |
      | Suriname                                     | Yes                                |
      | Svalbard and Jan Mayen                       | No                                 |
      | Sweden                                       | Yes                                |
      | Syria                                        | No                                 |
      | Taiwan                                       | Yes                                |
      | Tajikistan                                   | No                                 |
      | Tanzania                                     | No                                 |
      | Thailand                                     | No                                 |
      | The Bahamas                                  | Yes                                |
      | The Gambia                                   | No                                 |
      | Timor-Leste                                  | Yes                                |
      | Togo                                         | Yes                                |
      | Tokelau                                      | Yes                                |
      | Tonga                                        | No                                 |
      | Trinidad and Tobago                          | No                                 |
      | Tunisia                                      | No                                 |
      | Turkey                                       | No                                 |
      | Turkmenistan                                 | Yes                                |
      | Turks and Caicos Islands                     | No                                 |
      | Tuvalu                                       | No                                 |
      | Uganda                                       | No                                 |
      | Ukraine                                      | Yes                                |
      | United Arab Emirates                         | No                                 |
      | United States Minor Outlying Islands         | Yes                                |
      | United States Virgin Island                  | No                                 |
      | Uruguay                                      | Yes                                |
      | Uzbekistan                                   | Yes                                |
      | Vanuatu                                      | No                                 |
      | Vatican City                                 | Yes                                |
      | Venezuela                                    | No                                 |
      | Vietnam                                      | Yes                                |
      | Wallis and Futuna                            | Yes                                |
      | Western Sahara                               | No                                 |
      | Yemen                                        | No                                 |
      | Zambia                                       | Yes                                |
      | Zimbabwe                                     | No                                 |
