require 'rails_helper'

RSpec.describe "charges/index.html.erb", :type => :view do
  it 'Verify that there are three lists' do
    visit '/'
    page.should have_content('Failed Charges')
    page.should have_content('Disputed Charges')
    page.should have_content('Successful Charges')
  end

  it 'Verify that in the Successful charges list there are 10 line items' do
    visit '/'
    page.all('.success-charges-list .row').count eq 10
  end
end
