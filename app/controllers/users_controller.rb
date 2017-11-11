class UsersController < ApplicationController
	before_action :authenticate_request, except: [:create]

	require 'json'

	def show
		@user = User.find(params[:id])

		respond_to do |format|
      format.html
      format.json {
        render :json => @user.to_json
      }
    end
	end

  def create
  	user = User.new()
    user.email = params[:email]
    user.password = params[:password]

    if user.save
      render :json => user.to_json, status: :created
    else
			render json: user.errors, status: :unprocessable_entity
    end
  end
end
