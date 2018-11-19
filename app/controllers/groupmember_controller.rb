class GroupmemberController < ApplicationController

    # Swagger Documentation
    swagger_controller :groupmember, "Group Member"

    swagger_api :index do
        summary "Fetches all group members"
        notes "This lists all the group members"
    end

    swagger_api :show do
        summary "Shows one group member"
        param :path, :id, :integer, :required, "Group Member ID"
        notes "This lists details of one group member"
        response :not_found
    end

    # swagger_api :create do
    #     summary "Creates a new travel group"
    #     param :form, :trip_name, :string, :required, "Trip Name"
    #     param :form, :start_date, :date, :required, "Start Date"
    #     param :form, :end_date, :date, "End Date"
    #     response :not_acceptable
    # end

    # swagger_api :update do
    #     summary "Updates an existing travel group"
    #     param :path, :id, :integer, :required, "Travel Group ID"
    #     param :form, :trip_name, :string, :optional, "Trip Name"
    #     param :form, :start_date, :date, :optional, "Start Date"
    #     param :form, :end_date, :date, :optional, "End Date"
    #     response :not_found
    #     response :not_acceptable
    # end

    # swagger_api :destroy do
    #     summary "Deletes an existing travel group"
    #     param :path, :id, :integer, :required, "Travel Group ID"
    #     response :not_found
    # end

    before_action :set_group_member, only: [:show, :destroy, :travelGroupMembers]

    # GET /groupmember
    def index
        @groupmembers = GroupMember.all
        render json: @groupmembers
    end

    # GET /groupmember/1
    def show
        render json: @groupmember
    end

    # GET /groupmember/travelgroup/1
    def travelGroupMembers
        @groupmembers = GroupMember.all
        @travelGroupMembers = @groupmembers.in_group(:travel_groups_id)
        render json: @travelGroupMembers
    end

    # POST /groupmember
    def create
        @groupmember = GroupMember.new(group_member_params)

        if @groupmember.save
        render json: @groupmember, status: :created, location: @groupmember
        else
        render json: @groupmember.errors, status: :unprocessable_entity
        end
    end

    # DELETE /groupmember/1
    def destroy
        @groupmember.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_member
        @groupmember = GroupMember.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_member_params
        params.permit(:users_id, :travel_groups_id)
    end
end
