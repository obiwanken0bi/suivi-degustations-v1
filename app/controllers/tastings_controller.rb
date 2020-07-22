class TastingsController < ApplicationController
  before_action :set_tasting, only: [:show, :edit, :update, :destroy]
  def index
    @tastings = Tasting.all
  end

  def show
  end

  def new
    @tasting = Tasting.new
  end

  def create
    @tasting = Tasting.new(tasting_params)
    @tasting.save

    redirect_to user_tasting_path(@tasting)
  end

  def edit
  end

  def update
    @tasting.update(tasting_params)

    redirect_to user_tasting_path(@tasting)
  end

  def destroy
    @tasting.destroy

    redirect_to user_tastings_path
  end

  private

  def set_tasting
    @tasting = Tasting.find(params[:id])
  end

  def tasting_params
    params.require(:tasting).permit(:category, :name, :producer, :type, :alcohol, :price, :rating, :comment)
  end
end
