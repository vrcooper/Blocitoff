class ItemsController < ApplicationController

  def new
      @user = User.find(params[:user_id])
      @item = Item.new
  end


  def create
      @user = current_user
      @items = @user.items

      @item = Item.new( item_params )  
      @item.user = current_user
     

     if @item.save
       flash[:notice] = "Item was saved."
       
     else
       flash[:error] = "There was an error saving the item. Please try again."
      end


    redirect_to root_url
   
   end

  def destroy
    @item = current_user.items.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html{redirect_to root_url}
      format.js
    end

  end

private 

  def item_params
    params.require(:item).permit(:name, :body)
  end
end