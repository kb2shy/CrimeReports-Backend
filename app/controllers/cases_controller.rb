class CasesController < ApplicationController
  before_action :find_case, only: [:update]

  def index
    @cases = Case.all
    render json: @cases
  end

  def show
    @case = Case.find(params[:id])
    render json: @case
  end

  def create
    @case = Case.new(case_params)
    if @case.save
      render json: @case, status: :accepted
    else
      render json: {errors: @case.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @case.update(case_params)
    if @case.save
      render json: @case, status: :accepted
    else
      render json: {errors: @case.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def case_params
    params.permit(:imageurl, :firstname, :lastname, :courtdate, :gonumber, :crime, :neighborhood, :dov, :event_id)
  end

  def find_case
    @case = Case.find(params[:id])
  end

end
