class ItemsController < ApplicationController

  def new
      @user = User.find(params[:user_id])
      @item = Item.new
  end


  def create
      @user = User.find(params[:user_id])
      @items = @user.items

      @item = Item.new
      @item = current_user
     

     if @item.save
       flash[:notice] = "Item was saved."
       
     else
       flash[:error] = "There was an error saving the item. Please try again."
       end
   end

   respond_to do |format|
    format.html
    format.js
  end

end