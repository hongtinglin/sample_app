class UsersController < ApplicationController
  def new
    @user=User.new
    @title="sign up"
  end

  def show
    @user=User.find(params[:id])
    @title=@user.name
  end

end
