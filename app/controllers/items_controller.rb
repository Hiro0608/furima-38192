class ItemsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
  
  def index
  end

  def new 
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :price, :introduction, :category_id, :status_id, :trading_price_id, :trading_area_id, :trading_days_id).merge(user_id: current_user.id)
  end
end

