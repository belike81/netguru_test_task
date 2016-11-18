class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    notes = subject_item.subject_item_notes.pluck(:value)
    notes = [0] if notes.empty?
    h.number_with_precision(notes.inject(:+).to_f / notes.size, precision: 2)
  end
end
