class MenuController < ApplicationController
  def show
    @items = Item.all
  end
end
