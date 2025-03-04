class MainController < ApplicationController
  include MainData
  def show
    @couple = 'Camila y Gabriel'
    @pictures = %w[27.jpg 100.jpg 118.jpg 127.jpg 73.jpg 59.jpg 56.jpg 6.jpg]
    @data = data
    @month_name = 'Abril'
    @total_days = 30
    @highlight_day = 5 # Example: Highlight the 15th
    @first_day_offset = 2 # Example: 1st starts on Wednesday
  end
end

