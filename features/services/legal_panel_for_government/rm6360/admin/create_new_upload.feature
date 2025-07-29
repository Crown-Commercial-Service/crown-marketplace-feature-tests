@skip-production
Feature: Legal Panel for Government - Admin - Create new upload

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Manage supplier data' page
    And I click on 'Create a new data upload'
    Then I am on the 'New data upload' page

  @file-download
  Scenario: Can download template files
    And I click on 'Download spreadsheet templates'
    Then the file 'Supplier spreadsheet templates' is downloaded with the 'zip' extension

  Scenario: I can upload successfully
    And I select the file 'data/legal_panel_for_government/rm6360/Supplier details.xlsx' to upload for 'Supplier details'
    And I select the file 'data/legal_panel_for_government/rm6360/Supplier service offerings.xlsx' to upload for 'Supplier service offerings'
    And I select the file 'data/legal_panel_for_government/rm6360/Supplier rate cards (lots 1, 2, 3, 5).xlsx' to upload for 'Supplier rate cards (lots 1, 2, 3, 5)'
    And I select the file 'data/legal_panel_for_government/rm6360/Supplier lot 4a rate cards.xlsx' to upload for 'Supplier lot 4a rate cards'
    And I select the file 'data/legal_panel_for_government/rm6360/Supplier lot 4b rate cards.xlsx' to upload for 'Supplier lot 4b rate cards'
    And I select the file 'data/legal_panel_for_government/rm6360/Supplier lot 4c rate cards.xlsx' to upload for 'Supplier lot 4c rate cards'
    And I click on 'Upload data'
    Then I am on the 'Upload session' page
    And I wait no longer than 240 seconds for the upload to finish
    And the status of the upload is 'Published on live'

  @file-download
  Scenario Outline: Download files on dashboard - <filename>
    And I click on "Return to 'Manage supplier data'"
    Then I am on the 'Manage supplier data' page
    When I download the '<filename>' file
    Then the file '<filename>' is downloaded with the 'xlsx' extension

    Examples:
      | filename                              |
      | Supplier details                      |
      | Supplier service offerings            |
      | Supplier rate cards (lots 1, 2, 3, 5) |
      | Supplier lot 4a rate cards            |
      | Supplier lot 4b rate cards            |
      | Supplier lot 4c rate cards            |

  @file-download
  Scenario Outline: Download files on upload - <filename>
    And I click on "Return to 'Manage supplier data'"
    Then I am on the 'Manage supplier data' page
    And I click on the first upload session with status 'Published on live'
    Then I am on the 'Upload session' page
    And the status of the upload is 'Published on live'
    When I download the '<filename>' file
    Then the file '<filename>' is downloaded with the 'xlsx' extension
    And I click on "Return to 'Manage supplier data'"
    Then I am on the 'Manage supplier data' page

    Examples:
      | filename                              |
      | Supplier details                      |
      | Supplier service offerings            |
      | Supplier rate cards (lots 1, 2, 3, 5) |
      | Supplier lot 4a rate cards            |
      | Supplier lot 4b rate cards            |
      | Supplier lot 4c rate cards            |
