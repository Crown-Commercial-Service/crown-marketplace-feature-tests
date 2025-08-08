module Pages
  class Admin < SitePrism::Page
    class AdminUploadIssuesRow < SitePrism::Section
      element :issue, 'td.govuk-table__cell:nth-child(1)'
      element :detail, 'td.govuk-table__cell:nth-child(2)'
    end

    element :upload_status, '#main-content > div > div > dl > div:nth-child(1) > dd > strong'
    element :report_generation_status, '#main-content > div > div > dl > div:nth-child(1) > dd > strong'

    sections :upload_issues_table, AdminUploadIssuesRow, '#main-content > div:nth-child(4) > div > table > tbody > tr'
    sections :upload_issues_table_fm, AdminUploadIssuesRow, '#main-content > div:nth-child(5) > div > table > tbody > tr'

    section :supply_teachers, '#main-content' do
      element :upload_status, 'div:nth-child(3) > div > dl > div:nth-child(1) > dd > strong'
      element :fail_reason, '#main-content > div:nth-child(3) > div > div > p'
    end

    section :user_reports, 'main form' do
      element :'From day', '#report_start_date_dd'
      element :'From month', '#report_start_date_mm'
      element :'From year', '#report_start_date_yyyy'

      element :'To day', '#report_end_date_dd'
      element :'To month', '#report_end_date_mm'
      element :'To year', '#report_end_date_yyyy'
    end
  end
end
