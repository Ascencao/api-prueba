Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#    scope module: :v1 do
# 		resources :garages do
# 		resources :cars
# 		end
# 	 end

	namespace :v1 do

		resources :garages, constraints: {format: :json} do
		resources :cars
		end

		resources :users, constraints: {format: :json} do
		resources :cars
		end
	end


end
