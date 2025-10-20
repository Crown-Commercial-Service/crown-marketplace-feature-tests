Feature: Management Consultancy - Suppliers - Lot 10

  Scenario Outline: Check the supplier data - Supplier <supplier>
    Given I sign in and navigate to the start page for the 'RM6309' framework in 'management consultancy'
    Given I select 'Lot 10 - Restructuring and insolvency'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF4 lot 10 - Restructuring and insolvency'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '5' companies can provide consultants
    And the selected suppliers are:
      | ERNSER GROUP              |
      | KERLUKE, BODE AND LANG    |
      | MCCLURE, EMARD AND LITTLE |
      | REICHERT LLC              |
      | TORP GROUP                |
    Given I click on '<supplier>'
    Then I am on the '<supplier>' page
    Then the supplier '<sme>' an SME
    And the rate types are 'Complex' and 'Non-Complex'
    And the rates for the 'Partner / Managing Director' are '<rate_1>'
    And the rates for the 'Managing Consultant / Director' are '<rate_2>'
    And the rates for the 'Principal Consultant / Associate Director' are '<rate_3>'
    And the rates for the 'Senior Consultant / Manager / Project Lead' are '<rate_4>'
    And the rates for the 'Consultant / Senior Analyst' are '<rate_5>'
    And the rates for the 'Analyst / Junior Consultant' are '<rate_6>'
    And the contact details for the supplier are:
      | <contact_name>   |
      | <contact_email>  |
      | <contact_number> |
      | <website>        |
      | <address>        |

    Examples:
      | supplier                  | sme    | rate_1        | rate_2        | rate_3        | rate_4        | rate_5        | rate_6        | contact_name      | contact_email                       | contact_number     | website                               | address                                            |
      | ERNSER GROUP              | is     | £1,690:£1,750 | £1,580:£1,640 | £1,480:£1,530 | £1,370:£1,420 | £1,260:£1,310 | £1,150:£1,200 | Dominique Stokes  | ernser.group@kuvalis.net            | 798-767-8679 x9250 | http://dubuque.org/wes.kassulke       | 3497 Darren Forest, Pagacton, NE 35331-3953        |
      | MCCLURE, EMARD AND LITTLE | is not | £1,380:£1,440 | £1,270:£1,330 | £1,170:£1,220 | £1,060:£1,110 | £950:£1,000   | £840:£890     | Burton Mitchell   | emard.little.and.mcclure@grady.info | 846.415.4633       | http://doyle.biz/sammy                | 1340 Lesley Path, South Wesleyborough, WA 71934    |
      | TORP GROUP                | is     | £1,670:£1,730 | £1,560:£1,620 | £1,460:£1,510 | £1,350:£1,400 | £1,240:£1,290 | £1,130:£1,180 | Carissa Powlowski | torp.group@keeling-skiles.org       | 583-878-8785 x6181 | http://hilll-walter.org/heath.weimann | Suite 998 209 Spencer Falls, Elliottbury, TX 75086 |
