class CoordinatesController < ApplicationController
	def new
		@coordinate = Coordinate.new
		@coordinate.items.build
	end

	def create
		@coordinate = Coordinate.new(coordinate_params)
		if @coordinate.save
			flash[:notice] = "コーディネートを登録しました"
			redirect_to coordinates_path
		else
			render 'new'
		end
	end

	def index
		@coordinates = Coordinate.all
	end

	private
	def coordinate_params
		params.require(:coordinate).permit(:user_id, :body, items_attributes: [:user_id, :item_name, :brand])
	end
end
