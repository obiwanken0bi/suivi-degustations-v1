class BeerTastingsController < ApplicationController
  before_action :set_user
  before_action :set_beer_tasting, only: [:show, :edit, :update, :destroy]

  def index
    @beer_tastings = BeerTasting.all
  end

  def show
  end

  def new
    @beer_tasting = BeerTasting.new
  end

  def create
    @beer_tasting = BeerTasting.new(beer_tasting_params)
    @beer_tasting.user = @user
    if @beer_tasting.save
      redirect_to user_beer_tasting_path(@user.id, @beer_tasting)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @beer_tasting.user = @user
    @beer_tasting.update(beer_tasting_params)

    redirect_to user_beer_tasting_path(@beer_tasting)
  end

  def destroy
    @beer_tasting.destroy

    redirect_to root_path
  end

  private

  def set_user
    @user = current_user
  end

  def set_beer_tasting
    @beer_tasting = BeerTasting.find(params[:id])
  end

  def beer_tasting_params
    params.require(:beer_tasting).permit(:name, :producer, :color, :type, :malts, :hops, :alcohol, :price, :tasting_date, :rating, :comment, :photo)
  end
end
