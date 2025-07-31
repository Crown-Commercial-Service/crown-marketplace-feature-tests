SERVICE_TO_START_PAGE_TITLE = {
  'facilities management' => 'Your account',
  'legal services' => 'Do you work for central government?',
  'legal panel for government' => 'Do you work for central government?',
  'management consultancy' => 'Select the lot you need',
  'supply teachers' => 'What is your school looking for?'
}.freeze

SERVICE_TO_ADMIN_PAGE_TITLE = {
  'facilities management' => 'RM6232 administration dashboard',
  'legal services' => 'Manage supplier data',
  'legal panel for government' => 'Manage supplier data',
  'management consultancy' => 'Manage supplier data',
  'supply teachers' => 'Supply teachers and agency workers'
}.freeze

Given('I sign in and navigate to the start page for the {string} framework in {string}') do |framework, service|
  visit "/#{service.gsub(' ', '-')}/#{framework}/sign-in"
  update_banner_cookie(true)
  step 'I sign in'
  step "I am on the '#{SERVICE_TO_START_PAGE_TITLE.fetch(service)}' page"
end

When('I go to the {string} start page for {string}') do |service, framework|
  visit "/#{service.gsub(' ', '-')}/#{framework}"
end

Given('I sign in as an admin for the {string} framework in {string}') do |framework, service|
  visit "/#{service.gsub(' ', '-')}/#{framework}/admin/sign-in"
  update_banner_cookie(true)
  current_user(role: 'admin')

  step 'I sign in'
  step "I am on the '#{SERVICE_TO_ADMIN_PAGE_TITLE.fetch(service)}' page"
end

Then('I am a no details user') do
  current_user(role: 'no_details')
end

When('I go to {string}') do |uri|
  visit uri
end

Then('I am on the {string} page') do |title|
  expect(page.find('h1')).to have_content(title)
rescue NoMethodError
  expect(page.find('h1')).to have_content(title)
end

Then('the caption is {string}') do |caption|
  expect(page.find('span[class*=govuk-caption]')).to have_content(caption)
end

When('I click on {string}') do |button_text|
  click_on(button_text)
end

Then('I sign in') do
  fill_in 'Email address', with: current_user.email
  fill_in 'Password', with: current_user.password
  click_button 'Sign in'
end

Then('I should see the following error messages:') do |table|
  expect(page).to have_css('div.govuk-error-summary')
  expect(page.find('.govuk-error-summary__list').find_all('a').map(&:text).reject(&:empty?)).to eq table.raw.flatten
end

Then('I enter the following details into the form:') do |table|
  table.raw.to_h.each do |field, value|
    fill_in field, with: value
  end
end

Then('I type the following details into the form:') do |table|
  table.raw.to_h.each do |field, value|
    find_field(field).send_keys(value)
  end
end

Then('I clear the form with backspaces:') do |table|
  table.raw.flatten.each do |field|
    element = find_field(field)

    find_field(field).send_keys([:backspace] * element.value.length)
  end
end

Given('I select {string}') do |item|
  choose item
end

Given('I check {string}') do |item|
  check item
end

When('I deselect the following items:') do |items|
  items.raw.flatten.each do |item|
    page.uncheck(item)
  end
end

Given('I click on the {string} back link') do |link_text|
  page.find('.govuk-back-link', text: link_text).click
end

Then('I click on the {string} button') do |button_text|
  page.click_button(button_text, class: 'govuk-button')
end

Then('the file {string} is downloaded with the {string} extension') do |filename, file_extension|
  download_file_name = DownloadHelpers.download_file_name

  expect(download_file_name).to start_with(filename)
  expect(download_file_name).to end_with(".#{file_extension}")
end

Then('the framework is {string}') do |framework|
  expect(page.current_path.split('/')[2]).to eq framework
end

Then('the unrecognised framework is {string}') do |framework|
  expect(home_page.unrecognised_framework.description).to have_content("The framework in the web address is '#{framework}'. Make sure the web address contains one of the listed frameworks.")
end

Then('I am on {string}') do |expected_path|
  expect(page).to have_current_path expected_path, ignore_query: true
end

Then('the following content should be displayed on the page:') do |table|
  page_text = page.find_by_id('main-content').text

  table.raw.flatten.each do |item|
    expect(page_text).to include(item)
  end
end

When('my cookies are disabled') do
  page.driver.browser.manage.delete_all_cookies
end

Then('I pause') do
  # byebug
  pending 'This step is used for debugging features'
end
