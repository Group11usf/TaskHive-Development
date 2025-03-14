class CalendarController < ApplicationController
  def index
    if params[:year].present? && params[:month].present?
      @displayed_date = Date.new(params[:year].to_i, params[:month].to_i)
    else
      @displayed_date = Date.today
    end
  end


  def date
    @date = date_params
  end

  public
  def date_params
    params.require(:date)
  end
end
