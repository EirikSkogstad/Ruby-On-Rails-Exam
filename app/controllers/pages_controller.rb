class PagesController < ApplicationController

  def front_page
    filter_string = params[:filters]
    if filter_string.nil?
      # Render normally
    else
      @filters = []
      @filters = filter_string.split(',')
    end

  end

  def filter_page
  end
end
