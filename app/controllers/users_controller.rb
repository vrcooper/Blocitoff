class UsersController < ApplicationController
 
before_action :authenticate_user!, except: [:show]


  def show
    @user = current_user
    @item = Item.new
    @items = @user.items
  end

end