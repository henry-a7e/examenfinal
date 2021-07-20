class TransmissionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_transmission, only: %i[ show edit update destroy ]

  # GET /transmissions or /transmissions.json
  def index
    @transmissions = Transmission.all
  end

  # GET /transmissions/1 or /transmissions/1.json
  def show
  end

  # GET /transmissions/new
  def new
    @transmission = Transmission.new
  end

  # GET /transmissions/1/edit
  def edit
  end

  # POST /transmissions or /transmissions.json
  def create
    @transmission = Transmission.new(transmission_params)

    respond_to do |format|
      if @transmission.save
        format.html { redirect_to @transmission, notice: "Transmission was successfully created." }
        format.json { render :show, status: :created, location: @transmission }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transmission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transmissions/1 or /transmissions/1.json
  def update
    respond_to do |format|
      if @transmission.update(transmission_params)
        format.html { redirect_to @transmission, notice: "Transmission was successfully updated." }
        format.json { render :show, status: :ok, location: @transmission }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transmission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transmissions/1 or /transmissions/1.json
  def destroy
    @transmission.destroy
    respond_to do |format|
      format.html { redirect_to transmissions_url, notice: "Transmission was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transmission
      @transmission = Transmission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transmission_params
      params.require(:transmission).permit(:date, :program_number)
    end
end
