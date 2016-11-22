class AddCompletionMonthToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :completion_month, :integer
    add_index :payments, :completion_month
  end
end
