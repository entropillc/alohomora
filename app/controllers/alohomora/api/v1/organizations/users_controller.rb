class Alohomora::Api::V1::Organizations::UsersController < ApplicationController
  respond_to :json
  before_filter :authenticate!, :organization_authorization!

  def index
    @users = User.users_for_organization(params[:organization_id])
  end
  
  def show
    @user = User.users_for_organization(params[:organization_id]).find_by_id(params[:id])
  end
  
end