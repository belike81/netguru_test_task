module PaymentsHelper
  def month_names_with_index(short: false)
    month_names = (short) ? Date::ABBR_MONTHNAMES : Date::MONTHNAMES
    month_names.compact.each_with_index.collect{|m, i| [m, i+1]}
  end

  def payments_by_month_for(student)
    student.payments.for_month(month_names_with_index.collect { |m, i| i }).map { |payment| [payment.completion_month, payment.completion_date.to_formatted_s(:short)] }.to_h
  end
end
