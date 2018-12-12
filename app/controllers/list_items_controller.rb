class ListItemsController < ApplicationController

  def index
    @list_items = ListItem.all
  end

  def new
    @list_item = ListItem.new
  end


  def create
    @list_item = ListItem.new(list_item_params)
    @list_item.save
    redirect_to list_items_path
  end

  private

    def list_item_params
      params.require(:list_item).permit(:name)
    end
end
