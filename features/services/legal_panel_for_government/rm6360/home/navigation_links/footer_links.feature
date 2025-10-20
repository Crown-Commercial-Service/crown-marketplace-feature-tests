Feature: Legal Panel for Government - Footer links

  Scenario Outline: <page_link>
    Given I go to the 'legal panel for government' start page for 'RM6360'
    When I click on '<page_link>'
    Then I am on the '<page_title>' page
    And I click on 'Back to start'
    And I am on the 'Find legal services for government' page

    Examples:
      | page_link               | page_title                                               |
      | Cookie policy           | Details about cookies on Crown Marketplace               |
      | Cookie settings         | Cookies on Crown Marketplace                             |
      | Accessibility statement | Legal Panel for Government (LPG) Accessibility statement |
