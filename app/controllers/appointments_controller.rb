class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    json_response(current_user.bookings)
  end

  def create
    current_user.bookings.create!(booking_params)
    json_response(current_user.bookings, :created)
  end

  private

  def booking_params
    params.permit(:date, :city, :hike_id)
  end
end
