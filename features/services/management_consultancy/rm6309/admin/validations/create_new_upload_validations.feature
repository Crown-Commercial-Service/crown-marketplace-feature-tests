Feature: Management Consultancy - Admin - Create new upload - Validations

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6309' framework in 'management consultancy'
    Then I am on the 'Admin dashboard' page
    And I click on 'Manage supplier data'
    Then I am on the 'Manage supplier data' page
    And I click on 'Create a new data upload'
    Then I am on the 'New data upload' page

  Scenario: No files uploaded
    And I click on 'Upload data'
    Then I should see the following error messages:
      | Select the 'Supplier details' file           |
      | Select the 'Supplier rate cards' file        |
      | Select the 'Supplier service offerings' file |

  Scenario: Incorrect extension uploaded
    And I select the file 'features/services/management_consultancy/rm6309/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier details'
    And I select the file 'features/services/management_consultancy/rm6309/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier rate cards'
    And I select the file 'features/services/management_consultancy/rm6309/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier service offerings'
    And I click on 'Upload data'
    Then I should see the following error messages:
      | The 'Supplier details' file must be an XLSX           |
      | The 'Supplier rate cards' file must be an XLSX        |
      | The 'Supplier service offerings' file must be an XLSX |

  Scenario: Upload invalid spreadsheets
    And I select the file 'data/legal_services/rm6240/Supplier details.xlsx' to upload for 'Supplier details'
    And I select the file 'data/legal_services/rm6240/Supplier details.xlsx' to upload for 'Supplier rate cards'
    And I select the file 'data/legal_services/rm6240/Supplier details.xlsx' to upload for 'Supplier service offerings'
    And I click on 'Upload data'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the upload to finish
    And the status of the upload is 'Failed'
    And the details for the failed upload are:
      | The 'Supplier details' file is missing sheets           | The 'Supplier details' file should have 1 sheet with the following name: 'MCF4'      |
      | The 'Supplier rate cards' file is missing sheets        | The 'Supplier rate cards' file should have 9 sheets with the following names:        |
      |                                                         | 'MCF4 Lot 1', 'MCF4 Lot 2', 'MCF4 Lot 3', 'MCF4 Lot 4', 'MCF4 Lot 5', 'MCF4 Lot 6',  |
      |                                                         | 'MCF4 Lot 7', 'MCF4 Lot 8', 'MCF4 Lot 9', 'MCF4 Lot 10'                              |
      | The 'Supplier service offerings' file is missing sheets | The 'Supplier service offerings' file should have 9 sheets with the following names: |
      |                                                         | 'MCF4 Lot 1', 'MCF4 Lot 2', 'MCF4 Lot 3', 'MCF4 Lot 4', 'MCF4 Lot 5', 'MCF4 Lot 6',  |
      |                                                         | 'MCF4 Lot 7', 'MCF4 Lot 8', 'MCF4 Lot 9', 'MCF4 Lot 10'                              |
