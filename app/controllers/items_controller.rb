class ItemsController < ApplicationController
  def edit
  end

  def show
  end

  def update
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.category.nil?
      @item.category = '1'
    end
    if @item.save
      render json: {message: 'success', itemId: @item.id}, status: 200
    else
      # render json: { error: @item.errors.full_messages.join(", ")}, status: 400
      render :new
    end
  end

  def new
    @item = Item.new
  end

  private
  def item_params
    params.require(:item).permit(
      :user_id, :title, :caption, :category, :item_image, :url,
      tags_attributes: [:id, :item_id, :tag_title, :tag_type_id, :_destroy])
  end
end
