class PersonGroupsController < ApplicationController
  before_action :set_person_group, only: [:show, :edit, :update, :destroy]

  # GET /person_groups
  # GET /person_groups.json
  def index
    @person_groups = PersonGroup.all
  end

  # GET /person_groups/1
  # GET /person_groups/1.json
  def show
  end

  # GET /person_groups/new
  def new
    @person_group = PersonGroup.new
  end

  # GET /person_groups/1/edit
  def edit
  end

  # POST /person_groups
  # POST /person_groups.json
  def create
    @person_group = PersonGroup.new(person_group_params)

    respond_to do |format|
      if @person_group.save
        format.html { redirect_to @person_group, notice: 'Person group was successfully created.' }
        format.json { render :show, status: :created, location: @person_group }
      else
        format.html { render :new }
        format.json { render json: @person_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_groups/1
  # PATCH/PUT /person_groups/1.json
  def update
    respond_to do |format|
      if @person_group.update(person_group_params)
        format.html { redirect_to @person_group, notice: 'Person group was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_group }
      else
        format.html { render :edit }
        format.json { render json: @person_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_groups/1
  # DELETE /person_groups/1.json
  def destroy
    @person_group.destroy
    respond_to do |format|
      format.html { redirect_to person_groups_url, notice: 'Person group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_group
      @person_group = PersonGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_group_params
      params.require(:person_group).permit(:code, :description, :url, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at)
    end
end
