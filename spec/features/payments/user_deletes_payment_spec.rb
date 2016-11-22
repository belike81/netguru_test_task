require 'spec_helper'

feature 'User deletes payment' do
  let!(:payment) { create :payment, amount: '100' }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit payments_path
  end

  scenario do
    find(:xpath, "//a[@title='delete']").click
    expect(page).to have_content 'Payment has been deleted!'
    expect(page).to have_no_content '100'
  end

end
