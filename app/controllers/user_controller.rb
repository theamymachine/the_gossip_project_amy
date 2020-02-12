class UserController < ApplicationController

  def id
    @user = User.find(params[:id])
  end
  
end
