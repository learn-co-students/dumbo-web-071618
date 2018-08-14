class DoctorsController < ApplicationController
  def index
    # GET /doctors
    @doctors = Doctor.all
    render :index
  end

  def show
    # GET /doctors/:id
    @doctor = Doctor.find(params[:id])
    render :show
  end

  def new
    # GET /doctors/new
    @doctor = Doctor.new
    # @doctor.name => nil
    render :new
  end

  def create
    byebug
    # Creating a doctor
    # We're gonna need the name of the doctor and also the specialty
    # params[:name], params[:specialty]
    # doctor = Doctor.create(name: params[:name], specialty: params[:specialty])
    # doctor = Doctor.create(name: params[:doctor][:name], speciality: params[:doctor][:specialty])
    doctor = Doctor.create(doctor_params)

    # doctors_path => GET "/doctors" => index
    # doctor_path(<the doctor object>) => GET "/doctors/:id" => show
    redirect_to doctor_path(doctor)
    # "/doctors/:id"

  end


  def edit
    # GET /doctors/:id/edit
    @doctor = Doctor.find(params[:id])
    render :edit
  end

  def update
    # PATCH /doctors/:id
    @doctor = Doctor.find(params[:id])

    @doctor.update(doctor_params)

    redirect_to "/doctors/#{@doctor.id}"

    # Find the doctor I want to update
    # Then update the doctor
    # Finally redirect back to the show page

  end


  # Strong Params
  private
  def doctor_params
    # params = { doctor: { name: "Prince", specialty: "Bees"}}
    params.require(:doctor).permit(:name, :specialty)
  end
end
