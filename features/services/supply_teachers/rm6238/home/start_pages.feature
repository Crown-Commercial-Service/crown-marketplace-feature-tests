Feature: Supply Teachers - Start pages

  Scenario: Buyer sees start page
    When I go to the 'supply teachers' start page for 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page

  Scenario: Buyer navigates to sign in page
    When I go to the 'supply teachers' start page for 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page
    When I click on 'Start now'
    Then I am on the 'Sign in to find supply teachers and agency workers' page

  @smoulder
  Scenario: Logging in
    When I go to the 'supply teachers' start page for 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page
    When I click on 'Start now'
    Then I am on the 'Sign in to find supply teachers and agency workers' page
    Then I click on 'Sign in with CCS'
    Given I am a 'supply teachers' user
    Then I sign in
    Then I am on the 'What is your school looking for?' page

  @smoulder
  Scenario: I can reach the DfE Sign in Page
    When I go to the 'supply teachers' start page for 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page
    When I click on 'Start now'
    Then I am on the 'Sign in to find supply teachers and agency workers' page
    Then I click on 'Sign in with DfE Sign-in'
    Then I am on the 'Department for Education Sign-in' page
