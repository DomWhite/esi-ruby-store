class StoreController < ApplicationController
  def index
      @items = Item.all
  end
  
  def show
    items = Item.all
    render :json => items.to_json
  end
end
