class TravelGroupsController < ApplicationController

    # Swagger Documentation
    swagger_controller :travelgroup, "Travel Groups"

    swagger_api :index do
      summary "Fetches all travel groups"
      notes "This lists all the travel groups"
    end

    swagger_api :show do
      summary "Shows one travel group"
      param :path, :id, :integer, :required, "Travel Group ID"
      notes "This lists details of one travel group"
      response :not_found
    end

    swagger_api :create do
      summary "Creates a new travel group"
      param :form, :trip_name, :string, :required, "Trip Name"
      param :form, :start_date, :date, :required, "Start Date"
      param :form, :end_date, :date, "End Date"
      response :not_acceptable
    end

    swagger_api :update do
      summary "Updates an existing travel group"
      param :path, :id, :integer, :required, "Travel Group ID"
      param :form, :trip_name, :string, :optional, "Trip Name"
      param :form, :start_date, :date, :optional, "Start Date"
      param :form, :end_date, :date, :optional, "End Date"
      response :not_found
      response :not_acceptable
    end

    swagger_api :destroy do
      summary "Deletes an existing travel group"
      param :path, :id, :integer, :required, "Travel Group ID"
      response :not_found
    end

    before_action :set_travel_group, only: [:show, :update, :destroy, :members]
  
    # GET /travel_groups
    def index
      @travelgroups = TravelGroup.all
      #@travelgroups.map(|group| GroupMember.in_group(group.id).map())
      render json: @travelgroups
    end
  
    # GET /travel_groups/1
    def show
      render json: @travelgroup
    end

    # GET /travel_groups/1/members
    def members
      @members = GroupMember.where(travel_group_id: @travelgroup.id)
      @users = User.where(id: @members.select(:user_id))
      render json: @users
    end
  
    # POST /travel_groups
    def create
      @travelgroup = TravelGroup.new(travel_group_params)

      # create a group member 
      #@groupMember = GroupMember.create(@travelgroup.travel_groups_id, users_id) 
      # need to get the user id from a login session 
  
      if @travelgroup.save
        GroupMember.create(travel_group_id: @travelgroup.id, user_id: 1)
        render json: @travelgroup, status: :created, location: @travelgroup
      else
        render json: @travelgroup.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /travel_groups/1
    def update
      if @travelgroup.update(travel_group_params)
        render json: @travelgroup
      else
        render json: @travelgroup.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /travel_groups/1
    def destroy
      @travelgroup.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_travel_group
        @travelgroup = TravelGroup.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def travel_group_params
        params.permit(:trip_name, :start_date, :end_date)
      end
  end