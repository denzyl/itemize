class ItemsController < ApplicationController

  def index
    @items = Item.all
    @items_group = Item.group(:item_name).all
    # @items = Item.select(:item_name).distinct
    # @items = Item.all.map{ |i| i.item_name }.uniq
    # @items = Item.uniq.pluck(:item_name)
    # @items = Item.uniq(&:item_name)
    # @item = @items.map(&:item_name).uniq
    logger.debug "#{@items_group.to_a}"
    # @items = Item.where(:user => 'etc').includes(:user).group_by(&:user)
    # @items =   Item.where(item_name: 'Wine')
  end

  def show
    @item = Item.find(params[:id])
  end

end
