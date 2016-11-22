class Payment < ActiveRecord::Base
  belongs_to :student

  validates :student_id, :amount, :completion_date, :completion_month, presence: true

  scope :for_month, -> (month) { select(:completion_month, :completion_date).where(completion_month: month).group(:completion_month, :completion_date) }
end
