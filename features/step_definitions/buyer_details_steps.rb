# Then('I should see the postcode error message for buyer details') do
#   expect(facilities_management_page.buyer_details.postcode_error_message).to have_text('Enter a valid postcode, for example SW1A 1AA')
# end

Then('I check {string} for the sector') do |option|
  buyer_detail_page.sector.send(option.to_sym).choose
end

# Then('I check {string} for being contacted') do |option|
#   facilities_management_page.buyer_details.contact_opt_in.send(option.to_sym).choose
# end

# Then('the following buyer details have been entered:') do |buyer_details_table|
#   buyer_details_table.raw.to_h.each do |field, value|
#     case field
#     when 'Sector'
#       expect(facilities_management_page.buyer_details.sector.send(value.to_sym)).to be_checked
#     when 'Contact opt in'
#       expect(facilities_management_page.buyer_details.contact_opt_in.send(value.to_sym)).to be_checked
#     when 'Organisation address'
#       expect(facilities_management_page.buyer_details.send(field.to_sym)).to have_content value
#     else
#       expect(facilities_management_page.buyer_details.send(field.to_sym).value).to eq value
#     end
#   end
# end

# Then('I change my contact detail address') do
#   facilities_management_page.buyer_details.change_address.click
# end

# Then('I select {string} from the address drop down') do |address|
#   facilities_management_page.buyer_details.address_drop_down.find(:option, address).select_option
# end

Then('the following buyer details have been entered for {string}:') do |section, buyer_details_table|
  row_sections = buyer_detail_page.buyer_details.send(section.to_sym).rows

  row_sections.zip(buyer_details_table.raw).each do |section, (field, value)|
    expect(section.key).to have_content(field)
    expect(section.value).to have_content(value)
  end
end
