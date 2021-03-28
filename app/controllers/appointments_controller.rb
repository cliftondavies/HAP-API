class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    json_response(Appointment.all)
  end

  def show
    current_user.bookings.create!(booking_params)
    json_response(Appointment.all, :created)
  end

  private

  def booking_params
    params.permit(:date, :city, :hike_id)
  end
end
