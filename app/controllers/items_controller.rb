class ItemsController < ApplicationController
  def index
 @item = Item.all 
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
  end

  def new
  end
end
