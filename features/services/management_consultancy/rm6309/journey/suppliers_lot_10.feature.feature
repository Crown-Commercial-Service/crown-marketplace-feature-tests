@skip-production
Feature: Management Consultancy - Suppliers - Lot 10

  Scenario Outline: Check the supplier data
    Given I sign in and navigate to the start page for the 'RM6309' framework in 'management consultancy'
    Given I select 'Lot 10 - Restructuring and insolvency'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF4 lot 10 - Restructuring and insolvency'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '12' companies can provide consultants
    And the selected suppliers are:
      | DACH INC                      |
      | ERNSER GROUP                  |
      | GERHOLD-RUNTE                 |
      | KIEHN, BLICK AND FUNK         |
      | PAUCEK-HERMAN                 |
      | PREDOVIC, MCGLYNN AND FRIESEN |
      | PROSACCO INC                  |
      | REICHEL-HODKIEWICZ            |
      | SHANAHAN LLC                  |
      | STARK, KUHLMAN AND FAHEY      |
      | WILLIAMSON GROUP              |
      | WINDLER, REICHERT AND HARBER  |

    Given I click on '<supplier>'
    Then I am on the '<supplier>' page
    Then the supplier '<sme>' an SME
    And the rate types are 'Complex' and 'Non-Complex'
    And the rates for the 'Analyst / Junior Consultant' are '<rate_1>'
    And the rates for the 'Consultant' are '<rate_2>'
    And the rates for the 'Senior Consultant / Engagement Manager / Project Lead' are '<rate_3>'
    And the rates for the 'Principal Consultant / Associate Director' are '<rate_4>'
    And the rates for the 'Managing Consultant / Director' are '<rate_5>'
    And the rates for the 'Partner' are '<rate_6>'
    And the contact details for the supplier are:
      | <contact_name>    |
      | <contact_email>   |
      | <contact_number>  |
      | <website>         |
      | <address>         |

    Examples:
      | supplier      | sme     | rate_1      | rate_2        | rate_3        | rate_4        | rate_5        | rate_6        | contact_name    | contact_email                       | contact_number        | website                                         | address                                             |
      | DACH INC      | is not  | £310:£360   | £420:£470     | £530:£580     | £640:£690     | £740:£800     | £850:£910     | Arturo Lindgren | inc_dach@abshire-stark.com          | 318-076-6586          | http://wilderman-rolfson.info/roselle_schuster  | 403 Koelpin Summit, Wilburnfurt, AZ 78924-4654      |
      | GERHOLD-RUNTE | is      | £810:£860   | £920:£970     | £1,030:£1,080 | £1,140:£1,190 | £1,240:£1,300 | £1,350:£1,410 | Kieth Pagac     | runte.gerhold@greenholt-collins.biz | (638) 654-3771 x2884  | http://mante-okuneva.net/mariana                | Apt. 875 1217 Linn Track, Hauckbury, WA 36025-7705  |
      | SHANAHAN LLC  | is      | £960:£1,010 | £1,070:£1,120 | £1,180:£1,230 | £1,290:£1,340 | £1,390:£1,450 | £1,500:£1,560 | Elbert Skiles   | shanahan.llc@macgyver-rempel.io     | 816-173-8621 x748     | http://zemlak-flatley.biz/lianne_bednar         | 9094 Dickinson Garden, Majorview, WV 32201-6632     |
