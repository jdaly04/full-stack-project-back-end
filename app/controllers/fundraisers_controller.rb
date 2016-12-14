class FundraisersController < ApplicationController
  def index
    @fundraisers = Fundraiser.all

    render json: @fundraisers
  end
end
