class TimeUnitTypesController < ApplicationController
  before_action :set_time_unit_type, only: [:show, :edit, :update, :destroy]

  # GET /time_unit_types
  # GET /time_unit_types.json
  def index
    @time_unit_types = TimeUnitType.all
  end

  # GET /time_unit_types/1
  # GET /time_unit_types/1.json
  def show
  end

  # GET /time_unit_types/new
  def new
    @time_unit_type = TimeUnitType.new
  end

  # GET /time_unit_types/1/edit
  def edit
  end

  # POST /time_unit_types
  # POST /time_unit_types.json
  def create
    @time_unit_type = TimeUnitType.new(time_unit_type_params)

    respond_to do |format|
      if @time_unit_type.save
        format.html { redirect_to @time_unit_type, notice: 'Time unit type was successfully created.' }
        format.json { render :show, status: :created, location: @time_unit_type }
      else
        format.html { render :new }
        format.json { render json: @time_unit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_unit_types/1
  # PATCH/PUT /time_unit_types/1.json
  def update
    respond_to do |format|
      if @time_unit_type.update(time_unit_type_params)
        format.html { redirect_to @time_unit_type, notice: 'Time unit type was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_unit_type }
      else
        format.html { render :edit }
        format.json { render json: @time_unit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_unit_types/1
  # DELETE /time_unit_types/1.json
  def destroy
    @time_unit_type.destroy
    respond_to do |format|
      format.html { redirect_to time_unit_types_url, notice: 'Time unit type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_unit_type
      @time_unit_type = TimeUnitType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_unit_type_params
      params.require(:time_unit_type).permit(:code, :description, :url, :equivalent_hours, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at)
    end
end
