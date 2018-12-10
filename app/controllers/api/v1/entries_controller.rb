class Api::V1::EntriesController < ApplicationController
  before_action :find_entry, only: [:update]
  def index
    @entries = Entry.all
    render json: @entries
  end

  def update
    @entry.update(entry_params)
    if @entry.save
      render json: @entry, status: :accepted
    else
      render json: { errors: @entry.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def entry_params
    params.permit()
  end

  def find_entry
    @entry = Entry.find(params[:id])
  end
end
