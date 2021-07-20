class PersonGarmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_person_garment, only: %i[ show edit update destroy ]

  # GET /person_garments or /person_garments.json
  def index
    @person_garments = PersonGarment.all
  end

  # GET /person_garments/1 or /person_garments/1.json
  def show
  end

  # GET /person_garments/new
  def new
    @person_garment = PersonGarment.new
  end

  # GET /person_garments/1/edit
  def edit
  end

  # POST /person_garments or /person_garments.json
  def create
    @person_garment = PersonGarment.new(person_garment_params)

    respond_to do |format|
      if @person_garment.save
        format.html { redirect_to @person_garment, notice: "Person garment was successfully created." }
        format.json { render :show, status: :created, location: @person_garment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_garments/1 or /person_garments/1.json
  def update
    respond_to do |format|
      if @person_garment.update(person_garment_params)
        format.html { redirect_to @person_garment, notice: "Person garment was successfully updated." }
        format.json { render :show, status: :ok, location: @person_garment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_garments/1 or /person_garments/1.json
  def destroy
    @person_garment.destroy
    respond_to do |format|
      format.html { redirect_to person_garments_url, notice: "Person garment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_garment
      @person_garment = PersonGarment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_garment_params
      params.require(:person_garment).permit(:person_id, :transmission_id, :garment_id)
    end
end
