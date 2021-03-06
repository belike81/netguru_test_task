require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :student_id }
    it { is_expected.to validate_presence_of :amount }
    it { is_expected.to validate_presence_of :completion_month }
    it { is_expected.to validate_presence_of :completion_date }
  end

  describe 'database columns' do
    it { should have_db_column :student_id }
    it { should have_db_column :amount }
    it { should have_db_column :completion_month }
    it { should have_db_column :completion_date }
  end

  describe 'associations' do
    it { is_expected.to belong_to :student }
  end
end
