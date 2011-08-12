class SessionsController < ApplicationController
  def new
    @title="sign in"
  end

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "sign in"
      render 'new'
    else
      # Sign the user in and redirect to the user's show page.
      #     end
    end

  end
end
