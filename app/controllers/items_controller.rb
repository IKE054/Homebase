class ItemsController < ApplicationController
  def edit
  end

  def show
    @item = Item.find(params[:id])
  end

  def update
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.category.nil?
      @item.category = 1
    end
    if @item.category == 2
      @item.url = Item.get_movie(@item.url)
    end

    if @item.save
      # render json: {message: 'success', itemId: @item.id}, status: 200
      render :new
    else
      # render json: { error: @item.errors.full_messages.join(", ")}, status: 400
      render :new
    end
  end

  def new
    @item = Item.new
  end

  private
  # def item_params
  #   params.require(:item).permit(
  #     :user_id, :title, :caption, :category, :item_image, :url,
  #     tags_attributes: [:id, :item_id, :tag_title, :tag_type_id, :_destroy])
  # end

  def item_params
   params.require(:item).permit(
   :user_id, :title, :caption, :category, :item_image, :url)
  end
end
