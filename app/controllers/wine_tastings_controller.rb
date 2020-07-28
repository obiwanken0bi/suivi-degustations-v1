class WineTastingsController < ApplicationController
  before_action :set_user
  before_action :set_wine_tasting, only: [:show, :edit, :update, :destroy]

  def index
    @wine_tastings = WineTasting.all
  end

  def show
  end

  def new
    @wine_tasting = WineTasting.new
  end

  def create
    @wine_tasting = WineTasting.new(wine_tasting_params)
    @wine_tasting.user = @user
    if @wine_tasting.save
      redirect_to user_wine_tasting_path(@user.id, @wine_tasting)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @wine_tasting.user = @user
    @wine_tasting.update(wine_tasting_params)

    redirect_to user_wine_tasting_path(@wine_tasting)
  end

  def destroy
    @wine_tasting.destroy

    redirect_to root_path
  end

  private

  def set_user
    @user = current_user
  end

  def set_wine_tasting
    @wine_tasting = WineTasting.find(params[:id])
  end

  def wine_tasting_params
    params.require(:wine_tasting).permit(:name, :producer, :color, :vintage, :label, :grape_variety, :alcohol, :price, :tasting_date, :rating, :comment, :photo)
  end
end
