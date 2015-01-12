class ProjectPersonEstimatesController < ApplicationController
  before_action :set_project_person_estimate, only: [:show, :edit, :update, :destroy]

  # GET /project_person_estimates
  # GET /project_person_estimates.json
  def index
    @project_person_estimates = ProjectPersonEstimate.all
  end

  # GET /project_person_estimates/1
  # GET /project_person_estimates/1.json
  def show
  end

  # GET /project_person_estimates/new
  def new
    @project_person_estimate = ProjectPersonEstimate.new
  end

  # GET /project_person_estimates/1/edit
  def edit
  end

  # POST /project_person_estimates
  # POST /project_person_estimates.json
  def create
    @project_person_estimate = ProjectPersonEstimate.new(project_person_estimate_params)

    respond_to do |format|
      if @project_person_estimate.save
        format.html { redirect_to @project_person_estimate, notice: 'Project person estimate was successfully created.' }
        format.json { render :show, status: :created, location: @project_person_estimate }
      else
        format.html { render :new }
        format.json { render json: @project_person_estimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_person_estimates/1
  # PATCH/PUT /project_person_estimates/1.json
  def update
    respond_to do |format|
      if @project_person_estimate.update(project_person_estimate_params)
        format.html { redirect_to @project_person_estimate, notice: 'Project person estimate was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_person_estimate }
      else
        format.html { render :edit }
        format.json { render json: @project_person_estimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_person_estimates/1
  # DELETE /project_person_estimates/1.json
  def destroy
    @project_person_estimate.destroy
    respond_to do |format|
      format.html { redirect_to project_person_estimates_url, notice: 'Project person estimate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_person_estimate
      @project_person_estimate = ProjectPersonEstimate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_person_estimate_params
      params.require(:project_person_estimate).permit(:project_id, :person_id, :time_amount, :time_unit_type_id, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at)
    end
end
