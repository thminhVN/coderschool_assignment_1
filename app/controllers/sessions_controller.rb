class SessionsController < ApplicationController
  def create
  end

  def update
	  	(session[:order] ||= []) << params[:menu_id]
	  	respond_to do |format|
	  		format.json {
	  			render json: session
  		}
		end
  end

  def destroy
  end
end
