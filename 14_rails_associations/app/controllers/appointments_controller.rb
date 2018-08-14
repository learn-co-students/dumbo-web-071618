class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
    render :new
  end

  def create
    # date: params[:appointment][:date], doctor_id: params[:appoinment][:doctor_id]
    @appointment = Appointment.new(appointment_params)
    # @appointment.save
    byebug
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    render :show
  end

  private
  def appointment_params
    params.require(:appointment).permit(:date, :doctor_id)
  end
end
