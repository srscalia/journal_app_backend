class Api::V1::JournalsController < ApplicationController
  before_action :find_journal, only: [:update, :show, :destroy]

  def index
    @journals = Journal.all
    render json: @journals
  end
  # delete index after MVP
  def show
    render json: @journal, status: :ok
  end

  def create
    @journal = Journal.create(journal_params)
    render json: @journal, status: :created
  end

  def update
    @journal.update(journal_params)
    if @journal.save
      render json: @journal, status: :accepted
    else
      render json: { errors: @journal.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @journal.destroy
  end

  private

  def journal_params
    params.permit(:user_id, :theme)
  end

  def find_journal
    @journal = Journal.find(params[:id])
  end
end
