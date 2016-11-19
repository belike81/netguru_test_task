class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :student_id
      t.decimal :amount
      t.date :completion_date

      t.timestamps null: false
    end
  end
end
