class UsersController < ApplicationController
  def create
    result = UserService::Base.create_user(user_params)
    if result.success?
      render json: result.payload, status: :created
    else
      render json: result.errors, status: :unprocessable_entity
    end
  end

  def index
    result = UserService::Base.filter_users(params)
    render json: result.payload, status: :ok
  end

  private

  def user_params
    params.permit(:name, :email)
  end
end