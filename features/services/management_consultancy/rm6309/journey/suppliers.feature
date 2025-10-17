Feature: Management Consultancy - Suppliers

  Background: Login and then navigate to the supplier results page
    Given I sign in and navigate to the start page for the 'RM6309' framework in 'management consultancy'
    Given I select 'Lot 1 - Business'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF4 lot 1 - Business'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '22' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE                |
      | BASHIRIAN, BODE AND STEUBER              |
      | BOGISICH, BAUMBACH AND KERTZMANN         |
      | BRUEN-WITTING                            |
      | CONSIDINE GROUP                          |
      | CRONA-ZIEME                              |
      | DAVIS, HALEY AND HAND                    |
      | DIBBERT-ANKUNDING                        |
      | ERNSER GROUP                             |
      | HERMANN-WEHNER                           |
      | HILLL, HICKLE AND BODE                   |
      | JOHNSON GROUP                            |
      | KOELPIN LLC                              |
      | KOZEY-KEELING                            |
      | LANGWORTH, HETTINGER AND KUNDE           |
      | LEDNER-MAYER                             |
      | ORTIZ, STREICH AND HEANEY                |
      | PARKER INC                               |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG |
      | SCHILLER-SCHAMBERGER                     |
      | TORP GROUP                               |
      | WILLIAMSON GROUP                         |

  Scenario Outline: Check the supplier data - Supplier <supplier>
    Given I click on '<supplier>'
    Then I am on the '<supplier>' page
    Then the supplier '<sme>' an SME
    And the rate types are 'Advice' and 'Delivery'
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
      | supplier         | sme    | rate_1        | rate_2        | rate_3    | rate_4    | rate_5    | rate_6    | contact_name        | contact_email                     | contact_number      | website                         | address                                                |
      | BRUEN-WITTING    | is not | £1,500:£1,550 | £1,200:£1,250 | £600:£650 | £450:£500 | £400:£450 | £360:£410 | Sen. Alden Nikolaus | bruen_witting@kub-kris.io         | 1-662-003-4968 x255 | http://balistreri.co/young.wiza | 791 Maxie Landing, Jasonfurt, AZ 16479                 |
      | KOELPIN LLC      | is     | £1,900:£1,950 | £1,500:£1,550 | £800:£850 | £700:£750 | £600:£650 | £500:£550 | Rudolph Kassulke    | koelpin.llc@gusikowski-durgan.org | 613.662.1799 x019   | http://schumm.org/ezra_blanda   | Suite 744 30858 Lynsey Fall, South Erin, OH 64135-3093 |
      | WILLIAMSON GROUP | is not | £1,640:£1,690 | £1,100:£1,150 | £740:£790 | £640:£690 | £570:£620 | £510:£560 | Ta Swift MD         | group_williamson@padberg-wiza.com |                     | http://hyatt.com/corey.windler  | 430 Kautzer Divide, Lake Lorriefurt, LA 54301-3074     |

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'shortlist_of_management_consultancy_suppliers' is downloaded with the 'xlsx' extension
