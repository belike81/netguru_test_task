module Features
  module SelectHelpers
    def select_second(id)
      second_option_xpath = "//*[@id='#{id}']/option[2]"
      second_option = find(:xpath, second_option_xpath).text
      select(second_option, :from => id)
    end

    def select_current_date(id)
      select Time.now.year, from: "#{id}_1i"
      select Time.now.strftime("%B"), from:"#{id}_2i"
      select Time.now.day, from:"#{id}_3i"
    end
  end
end
