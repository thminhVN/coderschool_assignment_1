class OrderController < ApplicationController
	def create
		@order_items = MenuItem.find(session[:order])
	end

	def submit
		@new_order = OrderItem.new({
			:name => params[:name], 
			:phone => params[:phone], 
			:address => params[:address],
			:total => params[:total], 
			:detail => session[:order].to_json
			})
		if @new_order.save
			session[:current_order] = @new_order.id 
			redirect_to action: "thank_you"
			session[:order] = []
		else
			@message = "Error"
		end
	end

	def thank_you
		@new_order = OrderItem.find(session[:current_order])
		@detail = JSON.parse(@new_order.detail);
		@order_items = MenuItem.find(@detail)	
	end

end
