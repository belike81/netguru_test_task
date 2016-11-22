require 'rails_helper'

describe PaymentsHelper do
  describe "#month_names_with_index" do
    context 'full_array' do
      subject { helper.month_names_with_index.size }
      it { is_expected.to eq 12 }
    end

    context 'element of the array' do
      context 'with long month names' do
        subject { helper.month_names_with_index[3] }
        it { is_expected.to include 'April' }
        it { is_expected.to include 4 }
      end

      context 'with short month names' do
        subject { helper.month_names_with_index(short: true)[3] }
        it { is_expected.to include 'Apr' }
        it { is_expected.to include 4 }
      end
    end
  end

  describe "payments_by_month_for" do
    let(:student) { create :student }

    it "returns a correct hash with month that was payed for set as key" do
      create :payment, student_id: student.id, completion_date: '2016-10-10', completion_month: 10
      expect(helper.payments_by_month_for(student)).to include(10)
    end
  end
end
