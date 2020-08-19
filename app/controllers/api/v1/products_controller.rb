module Api
	module V1
		class ProductsController < ApplicationController
			def index
				products = Product.joins(:promotions).where(promotions: { status: "active"} ).pluck("products.*, promotions.discount")
				render json: {status: 'SUCCESS', message: 'Loaded articles', data: products}, status: :ok
			end

			def by_department
				department = params[:department]
				data = Department.find_by!(name: department).products
				render json: {status: 'SUCCESS', message: 'Loaded articles', data: data}, status: :ok
			end

			def by_promotion
				code = params[:code]
				data = Product.joins(:promotions).where(promotions: { code: code} ).pluck("products.*, promotions.discount")
				render json: {status: 'SUCCESS', message: 'Loaded articles', data: data}, status: :ok
			end 
		end
	end
end