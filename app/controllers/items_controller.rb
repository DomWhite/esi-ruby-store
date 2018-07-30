class ItemsController < ApplicationController
    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def show
        @item = Item.find(params[:id])
    end

    def create
        @item = Item.new(item_params)

        if @item.save
            redirect_to @item
        else
            render 'new'
        end
    end
end

private
    def item_params
        params.require(:item).permit(:name, :price, :description)
    end
