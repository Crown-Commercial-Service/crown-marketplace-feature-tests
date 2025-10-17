Feature: Legal Panel for Government - Admin - Create new upload - Validations

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6360' framework in 'legal panel for government'
    Then I am on the 'Admin dashboard' page
    And I click on 'Manage supplier data'
    Then I am on the 'Manage supplier data' page
    And I click on 'Create a new data upload'
    Then I am on the 'New data upload' page

  Scenario: No files uploaded
    And I click on 'Upload data'
    Then I should see the following error messages:
      | Select the 'Supplier details' file                      |
      | Select the 'Supplier service offerings' file            |
      | Select the 'Supplier rate cards (lots 1, 2, 3, 5)' file |
      | Select the 'Supplier lot 4a rate cards' file            |
      | Select the 'Supplier lot 4b rate cards' file            |
      | Select the 'Supplier lot 4c rate cards' file            |

  Scenario: Incorrect extension uploaded
    And I select the file 'features/services/legal_panel_for_government/rm6360/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier details'
    And I select the file 'features/services/legal_panel_for_government/rm6360/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier service offerings'
    And I select the file 'features/services/legal_panel_for_government/rm6360/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier rate cards (lots 1, 2, 3, 5)'
    And I select the file 'features/services/legal_panel_for_government/rm6360/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier lot 4a rate cards'
    And I select the file 'features/services/legal_panel_for_government/rm6360/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier lot 4b rate cards'
    And I select the file 'features/services/legal_panel_for_government/rm6360/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier lot 4c rate cards'
    And I click on 'Upload data'
    Then I should see the following error messages:
      | The 'Supplier details' file must be an XLSX                      |
      | The 'Supplier service offerings' file must be an XLSX            |
      | The 'Supplier rate cards (lots 1, 2, 3, 5)' file must be an XLSX |
      | The 'Supplier lot 4a rate cards' file must be an XLSX            |
      | The 'Supplier lot 4b rate cards' file must be an XLSX            |
      | The 'Supplier lot 4c rate cards' file must be an XLSX            |

  Scenario: Upload invalid spreadsheets
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier details'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier service offerings'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier rate cards (lots 1, 2, 3, 5)'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier lot 4a rate cards'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier lot 4b rate cards'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier lot 4c rate cards'
    And I click on 'Upload data'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the upload to finish
    And the status of the upload is 'Failed'
    And the details for the failed upload are:
      | The 'Supplier details' file is missing sheets                      | The 'Supplier details' file should have 1 sheet named 'All Suppliers'                 |
      | The 'Supplier service offerings' file is missing sheets            | The 'Supplier service offerings' file should have 7 sheets with the following names:  |
      |                                                                    | 'Lot 1', 'Lot 2', 'Lot 3', 'Lot 4a', 'Lot 4b', 'Lot 4c', 'Lot 5'                      |
      | The 'Supplier rate cards (lots 1, 2, 3, 5)' file is missing sheets | The 'Supplier rate cards (lots 1, 2, 3, 5)' file should have 4 sheets with the        |
      |                                                                    | following names: 'Lot 1', 'Lot 2', 'Lot 3', 'Lot 5'                                   |
      | The 'Supplier lot 4a rate cards' file is missing sheets            | The 'Supplier lot 4a rate cards' file should have 12 sheets with the following names: |
      |                                                                    | 'Senior Counsel', 'Partner', 'Legal Director', 'Senior Solicitor', 'Solicitor',       |
      |                                                                    | 'NQ Solicitor', 'Trainee', 'Paralegal', 'Senior Analyst', 'Analyst',                  |
      |                                                                    | 'Senior Modeller', 'Modeller'                                                         |
      | The 'Supplier lot 4b rate cards' file is missing sheets            | The 'Supplier lot 4b rate cards' file should have 12 sheets with the following names: |
      |                                                                    | 'Senior Counsel', 'Partner', 'Legal Director', 'Senior Solicitor', 'Solicitor',       |
      |                                                                    | 'NQ Solicitor', 'Trainee', 'Paralegal', 'Senior Analyst', 'Analyst',                  |
      |                                                                    | 'Senior Modeller', 'Modeller'                                                         |
      | The 'Supplier lot 4c rate cards' file is missing sheets            | The 'Supplier lot 4c rate cards' file should have 12 sheets with the following names: |
      |                                                                    | 'Senior Counsel', 'Partner', 'Legal Director', 'Senior Solicitor', 'Solicitor',       |
      |                                                                    | 'NQ Solicitor', 'Trainee', 'Paralegal', 'Senior Analyst', 'Analyst',                  |
      |                                                                    | 'Senior Modeller', 'Modeller'                                                         |
