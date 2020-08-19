module Api
	module V1
		class ProductsController < ApplicationController
			def index
				products = Product.includes(:promotions)
				render json: {status: 'SUCCESS', message: 'Loaded articles', data: products}, status: :ok
			end

			def by_department
				data = params[:department]
				render json: {status: 'SUCCESS', message: 'Loaded articles', data: data}, status: :ok
			end

			def by_promotion
				data = params[:promotion]
				render json: {status: 'SUCCESS', message: 'Loaded articles', data: data}, status: :ok
			end 
		end
	end
end