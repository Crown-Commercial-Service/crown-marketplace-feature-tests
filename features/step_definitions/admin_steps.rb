Then('I select the file {string} to upload for {string}') do |filename, field|
  page.attach_file("#{page.find('label', text: field)['for']}-input", filename)
end

Then('I wait no longer than {int} seconds for the upload to finish') do |number_of_seconds|
  Timeout.timeout(number_of_seconds) do
    sleep 1 until admin_page.upload_status.text != 'In progress'
  end
end

Then('I wait no longer than {int} seconds for the supply teachers upload status to change from {string}') do |number_of_seconds, upload_status|
  Timeout.timeout(number_of_seconds) do
    sleep 1 until admin_page.supply_teachers.upload_status.text != upload_status
  end
end

Then('I wait no longer than {int} seconds for the report to generate') do |number_of_seconds|
  Timeout.timeout(number_of_seconds) do
    sleep 1 until admin_page.report_generation_status.text != 'Generating report'
  end
end

Then('the status of the upload is {string}') do |upload_status|
  expect(admin_page.upload_status).to have_content(upload_status)
end

Then('the status of the supply teachers upload is {string}') do |upload_status|
  expect(admin_page.supply_teachers.upload_status).to have_content(upload_status)
end

Then('the status of the report is {string}') do |upload_status|
  expect(admin_page.report_generation_status).to have_content(upload_status)
end

Then('the details for the failed upload are:') do |issues_and_details_table|
  issues_and_details = []
  index = -1

  issues_and_details_table.raw.each do |issue_and_detail|
    if issue_and_detail[0].blank?
      issues_and_details[index][:detail] << issue_and_detail[1]
    else
      issues_and_details << { issue: issue_and_detail[0], detail: [issue_and_detail[1]] }
      index += 1
    end
  end

  upload_issues_table = @framework == 'RM6232' ? admin_page.upload_issues_table_fm : admin_page.upload_issues_table

  expect(upload_issues_table.length).to eq issues_and_details.length

  issues_and_details.zip(upload_issues_table).each do |expected, actual|
    expect(actual.issue).to have_content(expected[:issue])
    expect(actual.detail).to have_content(expected[:detail].join(' '))
  end
end

Then('the details for the failed supply teachers upload are:') do |fail_reason|
  expect(admin_page.supply_teachers.fail_reason).to have_content(fail_reason.raw.flatten.first)
end

When('I download the {string} file') do |filename|
  admin_page.find('td.govuk-table__cell', text: filename).find(:xpath, '..').find('a', text: 'Download').click
end

When('I download the {string} supply teachers file') do |filename|
  admin_page.find('th.govuk-table__header', text: filename).find(:xpath, '..').find('a', text: 'Download').click
end

When('I download the {string} report file') do |filename|
  admin_page.find('a', text: filename).click
end

Then('I click on the first upload session with status {string}') do |status|
  admin_page.first('td.govuk-table__cell', text: status).find(:xpath, '../td[1]/a').click
end

Then('I record the session name') do
  @session_name = admin_page.find('h1').text[-8..]
end

Then('I navigate to my recorded session page') do
  click_on "Upload session ##{@session_name}"
  step "I am on the 'Upload session #{@session_name}' page"
end

Then('I enter {string} as the {string} date') do |date, date_type|
  add_user_reports_dates(date_type, *date_options(date))
end

def add_user_reports_dates(date_type, day, month, year)
  admin_page.user_reports.send("#{date_type} day").set(day)
  admin_page.user_reports.send("#{date_type} month").set(month)
  admin_page.user_reports.send("#{date_type} year").set(year)
end

Then('I enter {string} for the supplier search') do |supplier_name|
  admin_page.supplier_search_input.fill_in with: "#{supplier_name}\n"
end

Then('I should see the following suppliers on the page:') do |supplier_names|
  expect(admin_page.suppliers.length).to eq(supplier_names.raw.flatten.length)

  admin_page.suppliers.map(&:supplier_name).zip(supplier_names.raw.flatten).each do |element, value|
    expect(element).to have_content(value)
  end
end

Then('I click on {string} for {string}') do |text, supplier_name|
  admin_page.suppliers.find { |element| element.supplier_name.text == supplier_name }.send(text).click
end

Then('I should see the following details in the {string} summary:') do |summary, supplier_data|
  summary_rows = admin_page.send(summary)

  expect(summary_rows.length).to eq(supplier_data.raw.length)

  summary_rows.zip(supplier_data.raw).each do |section, (expected_key, expected_value)|
    expect(section.key).to have_content(expected_key)
    expect(section.value).to have_content(expected_value)
  end
end

Then('I should see the following details in the summary for the lot {string}:') do |lot_name, supplier_data|
  summary_rows = admin_page.supplier_lots.find { |element| element.lot_name.text == lot_name }.lot_info

  expect(summary_rows.length).to eq(supplier_data.raw.length)

  summary_rows.zip(supplier_data.raw).each do |section, (expected_key, expected_value)|
    expect(section.key).to have_content(expected_key)
    expect(section.value).to have_content(expected_value)
  end
end

Then('I click on {string} for the lot {string}') do |view_link_text, lot_name|
  admin_page.supplier_lots.find { |element| element.lot_name.text == lot_name }.lot_info.find { |section| section.value.text.starts_with?(view_link_text) }.find('a').click
end

Then('the supplier should be assigned to the {string} as follows:') do |_section, section_items|
  admin_check_section_items(
    admin_page.supplier_section_tables.first,
    section_items
  )
end

Then('the supplier should be assigned to the {string} in {string} as follows:') do |_section, category, section_items|
  admin_check_section_items(
    admin_page.supplier_section_tables.find { |element| element.caption.text == category },
    section_items
  )
end

Then('the rates in the table are:') do |rates|
  admin_check_rates(
    admin_page.supplier_rates_tables.first,
    rates
  )
end

Then('the rates in the {string} table are:') do |country_name, rates|
  admin_check_rates(
    admin_page.supplier_rates_tables.find { |element| element.caption.text == country_name },
    rates
  )
end

Then('the branches in the table are:') do |branches|
  admin_check_branches(
    admin_page.supplier_branches_tables.first,
    branches
  )
end

Then('I should see rate tables for the following jurisdictions:') do |jurisdictions|
  expect(admin_page.supplier_rates_tables.length).to eq(jurisdictions.raw.flatten.length)

  admin_page.supplier_rates_tables.zip(jurisdictions.raw.flatten).each do |table, jurisdiction|
    expect(table.caption).to have_content(jurisdiction)
  end
end

def admin_check_table_headings(table, items)
  table_headings = table.headings
  headings = items.raw[0]

  expect(table_headings.length).to eq(headings.length)

  table_headings.zip(headings).each do |element, expected_heading|
    expect(element).to have_content(expected_heading)
  end
end

def admin_check_table_rows(table, items)
  table_rows = table.rows
  rows = items.raw[1..]

  expect(table_rows.length).to eq(rows.length)

  table_rows.zip(rows).each do |row, expected_items|
    expect(row.row_head).to have_content(expected_items[0])

    row.row_items.zip(expected_items[1..]) do |row_item, expected_value|
      expect(row_item).to have_content(expected_value)
    end
  end
end

def admin_check_section_items(table, section_items)
  admin_check_table_headings(table, section_items)
  table_rows = table.rows
  rows = section_items.raw[1..]

  expect(table_rows.length).to eq(rows.length)

  table_rows.zip(rows).each do |row, expected_items|
    row.row_items.zip(expected_items) do |row_item, expected_value|
      expect(row_item).to have_content(expected_value)
    end
  end
end

def admin_check_rates(table, rates)
  admin_check_table_headings(table, rates)
  admin_check_table_rows(table, rates)
end

def admin_check_branches(...)
  admin_check_rates(...)
end
