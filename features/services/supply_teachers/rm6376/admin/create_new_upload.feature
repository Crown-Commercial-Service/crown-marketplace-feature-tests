Feature: Supply Teachers - Admin - Create new upload

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6376' framework in 'supply teachers'
    Then I am on the 'Admin dashboard' page
    And I click on 'Upload supplier data'
    And I click on 'Create a new data upload'
    Then I am on the 'New data upload' page

  @file-download
  Scenario: Can download template files
    And I click on 'Download spreadsheet templates'
    Then the file 'Supplier spreadsheet templates' is downloaded with the 'zip' extension

  Scenario: I can upload successfully
    And I select the file 'data/supply_teachers/rm6376/Supplier details.xlsx' to upload for 'Supplier details'
    And I select the file 'data/supply_teachers/rm6376/Supplier geographical data.xlsx' to upload for 'Supplier geographical data'
    And I select the file 'data/supply_teachers/rm6376/Supplier rate cards.xlsx' to upload for 'Supplier rate cards'
    And I click on 'Upload data'
    Then I am on the 'Upload session' page
    And I wait no longer than 240 seconds for the upload to finish
    And the status of the upload is 'Published on live'

  @file-download
  Scenario Outline: Download files on dashboard - <filename>
    And I click on "Return to 'Upload supplier data'"
    Then I am on the 'Upload supplier data' page
    When I download the '<filename>' file
    Then the file '<filename>' is downloaded with the 'xlsx' extension

    Examples:
      | filename                   |
      | Supplier details           |
      | Supplier geographical data |
      | Supplier rate cards        |

  @file-download
  Scenario Outline: Download files on upload - <filename>
    And I click on "Return to 'Upload supplier data'"
    Then I am on the 'Upload supplier data' page
    And I click on the first upload session with status 'Published on live'
    Then I am on the 'Upload session' page
    And the status of the upload is 'Published on live'
    When I download the '<filename>' file
    Then the file '<filename>' is downloaded with the 'xlsx' extension
    And I click on "Return to 'Upload supplier data'"
    Then I am on the 'Upload supplier data' page

    Examples:
      | filename                   |
      | Supplier details           |
      | Supplier geographical data |
      | Supplier rate cards        |
