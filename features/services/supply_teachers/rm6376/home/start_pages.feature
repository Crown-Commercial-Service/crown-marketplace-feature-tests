Feature: Supply Teachers - Start pages

  Scenario: Buyer sees start page
    When I go to the 'supply teachers' start page for 'RM6376'
    Then I am on the 'Supply Teachers and Education Recruitment' page

  Scenario: Buyer navigates to sign in page
    When I go to the 'supply teachers' start page for 'RM6376'
    Then I am on the 'Supply Teachers and Education Recruitment' page
    When I click on 'Start now'
    Then I am on the 'Sign in for Supply Teachers and Education Recruitment' page

  @smoulder @production
  Scenario: Logging in
    When I go to the 'supply teachers' start page for 'RM6376'
    Then I am on the 'Supply Teachers and Education Recruitment' page
    When I click on 'Start now'
    Then I am on the 'Sign in for Supply Teachers and Education Recruitment' page
    Then I click on 'Sign in with GCA'
    Then I sign in
    Then I am on the 'What is your school looking for?' page

  @smoulder @production
  Scenario: I can reach the DfE Sign in Page
    When I go to the 'supply teachers' start page for 'RM6376'
    Then I am on the 'Supply Teachers and Education Recruitment' page
    When I click on 'Start now'
    Then I am on the 'Sign in for Supply Teachers and Education Recruitment' page
    Then I click on 'Sign in with DfE Sign-in'
    Then I am on the 'Access the DfE Sign-in service' page
