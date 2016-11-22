require 'spec_helper'

feature 'User creates payment' do
  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit payments_path
    create(:student)
    click_on 'Add new one'
  end

  scenario 'with valid input' do
    select_second('payment_student_id')
    fill_in 'Amount', with: '100'
    select_current_date('payment_completion_date')
    click_button 'Create Payment'
    expect(page).to have_content 'Payment has been created!'
  end

  scenario 'with missing amount' do
    select_second('payment_student_id')
    select_current_date('payment_completion_date')
    click_button 'Create Payment'
    expect(page).to have_content "can't be blank"
  end

  scenario 'with missing student' do
    fill_in 'Amount', with: '100'
    select_current_date('payment_completion_date')
    click_button 'Create Payment'
    expect(page).to have_content "can't be blank"
  end

end
