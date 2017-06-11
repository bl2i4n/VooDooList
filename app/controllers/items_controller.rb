class ItemsController < ApplicationController
  #need create todo
  #need edit todo
  #need delete todo

  def create
    @user = User.find(params[:user_id])
    @item = current_user.items.create(item_params)
    redirect_to root_path
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end

end
