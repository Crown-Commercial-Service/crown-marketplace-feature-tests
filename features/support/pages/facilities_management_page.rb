module Pages
  class SummarySection < SitePrism::Section
    elements :selection, 'details > div > ul > li'
    element :change, 'a'
  end

  class FacilitiesManagement < SitePrism::Page
    section :quick_view, '#main-content' do
      section :basket, '#css-list-basket' do
        elements :selection, 'ul > li > div:nth-of-type(2)'
        element :selection_count, 'h3'
        element :remove_all, '#removeAll'
      end

      element :annual_contract_value, '#annual_contract_value'
      element :sub_lot, '#procurement-sub-lot'
      elements :sub_lots, '#procurement-search-results > ul > li > a > span'

      section :selection_summary, 'div:nth-child(2) > div.govuk-grid-column-one-third' do
        section :services, SummarySection, 'div.ccs-summary-box:nth-of-type(1)'
        section :regions, SummarySection, 'div.ccs-summary-box:nth-of-type(2)'

        section :'annual contract cost', 'div.ccs-summary-box:nth-of-type(3)' do
          element :selection, '.ccs-summary-box__content'
          element :change, 'a'
        end
      end

      element :contract_name_field, '#facilities_management_rm6232_procurement_contract_name, #facilities_management_rm6378_procurement_contract_name'
      elements :suppliers, 'div:nth-child(2) > div.govuk-grid-column-two-thirds > ul > li, #procurement-search-results > div:not(.govuk-tabs__panel--hidden) > ul > li'
    end

    section :service_specification, '#main-content' do
      element :sub_title, 'div.govuk-clearfix > div:nth-child(1) > div > span'
      element :service_name_and_code, 'h2'
    end

    section :procurement, '#main-content' do
      elements :procurement_names, 'div.govuk-grid-row > div > div > table > tbody > tr'
    end

    section :notification_banner, 'div.govuk-notification-banner' do
      element :title, 'div.govuk-notification-banner__header > h2.govuk-notification-banner__title'
      element :message, 'div.govuk-notification-banner__content > p.govuk-notification-banner__heading'
    end
  end
end
