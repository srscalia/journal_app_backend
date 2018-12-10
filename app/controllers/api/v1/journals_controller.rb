class Api::V1::JournalsController < ApplicationController
  before_action :find_journal, only: [:update]
  def index
    @journals = Journal.all
    render json: @journals
  end

  def update
    @journal.update(journal_params)
    if @journal.save
      render json: @journal, status: :accepted
    else
      render json: { errors: @journal.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def journal_params
    params.permit()
  end

  def find_journal
    @journal = Journal.find(params[:id])
  end
end
