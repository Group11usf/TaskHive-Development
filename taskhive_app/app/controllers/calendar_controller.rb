class CalendarController < ApplicationController
  def index
    if params[:year].present? && params[:month].present?
      @displayed_date = Date.new(params[:year].to_i, params[:month].to_i)
    else
      @displayed_date = Date.today
    end

    # Compute the first and last days of the month.
    first_day = Date.new(@displayed_date.year, @displayed_date.month, 1)
    last_day = Date.new(@displayed_date.year, @displayed_date.month, -1)

    # Compute calendar grid: start_day is the Sunday before (or on) the first day;
    # end_day is the Saturday after (or on) the last day.
    @start_day = first_day - first_day.wday
    @end_day   = last_day + (6 - last_day.wday)
  end

  def date
    @date = date_params
  end

  private

  def date_params
    params.require(:date)
  end
end
