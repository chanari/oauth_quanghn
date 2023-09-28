class Api::UsersController < Api::ApplicationController
  before_action :doorkeeper_authorize!

  def owner
    user = User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token

    render json: user.as_json
  end
end
