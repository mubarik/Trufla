Rails.application.routes.draw do
	namespace 'api' do
		namespace 'v1' do
			#resources :products
			get '/products', to: 'products#index'
			get '/products/by_department', to: 'products#by_department'
			get '/products/by_promotion', to: 'products#by_promotion'
		end
	end
end
