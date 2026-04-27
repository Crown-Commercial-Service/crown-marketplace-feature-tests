Feature: Supply Teachers - Admin - Create new upload - Validations

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6376' framework in 'supply teachers'
    Then I am on the 'Admin dashboard' page
    And I click on 'Upload supplier data'
    Then I am on the 'Upload supplier data' page
    And I click on 'Create a new data upload'
    Then I am on the 'New data upload' page

  Scenario: No files uploaded
    And I click on 'Upload data'
    Then I should see the following error messages:
      | Select the 'Supplier details' file           |
      | Select the 'Supplier geographical data' file |
      | Select the 'Supplier rate cards' file        |

  Scenario: Incorrect extension uploaded
    And I select the file 'features/services/supply_teachers/rm6376/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier details'
    And I select the file 'features/services/supply_teachers/rm6376/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier geographical data'
    And I select the file 'features/services/supply_teachers/rm6376/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier rate cards'
    And I click on 'Upload data'
    Then I should see the following error messages:
      | The 'Supplier details' file must be an XLSX           |
      | The 'Supplier geographical data' file must be an XLSX |
      | The 'Supplier rate cards' file must be an XLSX        |

  Scenario: Upload invalid spreadsheets
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier details'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier geographical data'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier rate cards'
    And I click on 'Upload data'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the upload to finish
    And the status of the upload is 'Failed'
    And the details for the failed upload are:
      | The 'Supplier details' file is missing sheets           | The 'Supplier details' file should have 1 sheet named 'All Suppliers'                          |
      | The 'Supplier geographical data' file is missing sheets | The 'Supplier geographical data' file should have 1 sheet named 'Branch details'               |
      | The 'Supplier rate cards' file is missing sheets        | The 'Supplier rate cards' file should have 2 sheets with the following names: 'Lot 1', 'Lot 2' |
