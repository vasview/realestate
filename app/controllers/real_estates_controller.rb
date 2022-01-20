class RealEstatesController < ApplicationController
  before_action :set_real_estate, only: %i[ show edit update destroy ]

  # GET /real_estates or /real_estates.json
  def index
    @real_estates = RealEstate.all
  end

  # GET /real_estates/1 or /real_estates/1.json
  def show
    @real_estate = RealEstate.find(params[:id])
  end

  # GET /real_estates/new
  def new
    @real_estate = RealEstate.new
  end

  # GET /real_estates/1/edit
  def edit
  end

  # POST /real_estates or /real_estates.json
  def create
    @real_estate = RealEstate.new(real_estate_params)

    respond_to do |format|
      if @real_estate.save
        format.html { redirect_to real_estate_url(@real_estate), notice: "Real estate was successfully created." }
        format.json { render :show, status: :created, location: @real_estate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @real_estate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /real_estates/1 or /real_estates/1.json
  def update
    respond_to do |format|
      if @real_estate.update(real_estate_params)
        format.html { redirect_to real_estate_url(@real_estate), notice: "Real estate was successfully updated." }
        format.json { render :show, status: :ok, location: @real_estate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @real_estate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /real_estates/1 or /real_estates/1.json
  def destroy
    @real_estate.destroy

    respond_to do |format|
      format.html { redirect_to real_estates_url, notice: "Real estate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_real_estate
      @real_estate = RealEstate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def real_estate_params
      params.require(:real_estate)
            .permit(:title, :real_estate_type, :address, :number_of_rooms, :number_of_levels,
                    :property_level, :area, :requested_price, :wall_material, :description,
                    :city_id, :personal_data_processing, :header_image, pictures: [])
    end
end
