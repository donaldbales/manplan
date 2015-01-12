class PersonGroupMembersController < ApplicationController
  before_action :set_person_group_member, only: [:show, :edit, :update, :destroy]

  # GET /person_group_members
  # GET /person_group_members.json
  def index
    @person_group_members = PersonGroupMember.all
  end

  # GET /person_group_members/1
  # GET /person_group_members/1.json
  def show
  end

  # GET /person_group_members/new
  def new
    @person_group_member = PersonGroupMember.new
  end

  # GET /person_group_members/1/edit
  def edit
  end

  # POST /person_group_members
  # POST /person_group_members.json
  def create
    @person_group_member = PersonGroupMember.new(person_group_member_params)

    respond_to do |format|
      if @person_group_member.save
        format.html { redirect_to @person_group_member, notice: 'Person group member was successfully created.' }
        format.json { render :show, status: :created, location: @person_group_member }
      else
        format.html { render :new }
        format.json { render json: @person_group_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_group_members/1
  # PATCH/PUT /person_group_members/1.json
  def update
    respond_to do |format|
      if @person_group_member.update(person_group_member_params)
        format.html { redirect_to @person_group_member, notice: 'Person group member was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_group_member }
      else
        format.html { render :edit }
        format.json { render json: @person_group_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_group_members/1
  # DELETE /person_group_members/1.json
  def destroy
    @person_group_member.destroy
    respond_to do |format|
      format.html { redirect_to person_group_members_url, notice: 'Person group member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_group_member
      @person_group_member = PersonGroupMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_group_member_params
      params.require(:person_group_member).permit(:person_group_id, :person_id, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at)
    end
end
