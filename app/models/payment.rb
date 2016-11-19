class Payment < ActiveRecord::Base
  belongs_to :student

  validates :student_id, :amount, :completion_date, presence: true
end
