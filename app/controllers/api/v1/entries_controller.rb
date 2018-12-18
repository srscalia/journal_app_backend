class Api::V1::EntriesController < ApplicationController
  before_action :find_entry, only: [:update, :show, :destroy]
  def index
    @entries = Entry.all
    render json: @entries
  end
  # delete index after MVP

  def show
    render json: @entry, status: :ok
  end

  def create
    @entry = Entry.create(entry_params)
    render json: @entry, status: :created
  end

  def update
    @entry.update(entry_params)
    if @entry.save
      render json: @entry, status: :accepted
    else
      render json: { errors: @entry.errors.full_messages }, status: :unprocessible_entity
    end
  end


  def destroy
    @entry.destroy
  end

  private

  def entry_params
    params.permit(:journal_id, :title, :body, :photo, :location, :date)
  end

  def find_entry
    @entry = Entry.find(params[:id])
  end
end
