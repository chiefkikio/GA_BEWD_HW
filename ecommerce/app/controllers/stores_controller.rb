class StoresController < ApplicationController
	def index
    	@stores = Store.all
  	end

	# def new
	# 	@store = Store.new
	# end

	# def create
 #    	@store = Store.new(store_params)
 #    	if @store.save
 #     		# Handle a successful save.
 #    	else
 #      		flash.now.alert = "Please fill all fields."
 #      		render :new
 #      	end
 #  	end
end
