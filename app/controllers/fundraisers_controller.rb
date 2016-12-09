class FundraisersController < ApplicationController
  def index
    @fundraisers = Fundraiser.all

    render json: @fundraisers
  end

  def show
    render json: @fundraiser
  end

  # POST /fundraisers
  # POST /fundraisers.json
  def create
    @fundraiser = Fundraiser.new(fundraiser_params)

    if @fundraiser.save
      render json: @fundraiser, status: :created, location: @fundraiser
    else
      render json: @fundraiser.errors, status: :unprocessable_entity
    end
  end

  def update
    @fundraiser = Fundraiser.find(params[:id])

    if @fundraiser.update(fundraiser_params)
      head :no_content
    else
      render json: @fundraiser.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @fundraiser.destroy

    head :no_content
  end

  private

  def set_fundraiser
    @fundraiser = Fundraiser.find(params[:id])
  end

  def fundraiser_params
    params.require(:fundraiser).permit(:name)
  end
end
