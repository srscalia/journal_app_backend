class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: %i[create]
  before_action :find_user, only: [:update, :show, :destroy]

  def index
    @users = User.all
    render json: @users
  end
  # delete index after MVP

  def show
    render json: @user, status: :ok
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :username, :password, :email, :phone)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
