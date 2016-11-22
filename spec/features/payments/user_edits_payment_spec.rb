require 'spec_helper'

feature 'User edits payment' do
  let!(:payment) { create :payment }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit payments_path
    find(:xpath, "//a[@title='edit']").click
  end

  scenario 'with valid input' do
    fill_in 'Amount', with: '100'
    click_button 'Update Payment'
    expect(page).to have_content 'Payment has been updated!'
    expect(page).to have_content '100'
  end

  scenario 'with invalid input' do
    fill_in 'Amount', with: ''
    click_button 'Update Payment'
    expect(page).to have_content "can't be blank"
  end

end
