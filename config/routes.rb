Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :workouts, only: [:index, :create, :destroy, :update]
      end
    end
  root to: 'site#index'
  get 'equipment/index'
  get 'equipment/show'
  get 'equipment/new'
  get 'equipment/edit'
  get 'exercises/index'
  get 'exercises/show'
  get 'exercises/new'
  get 'exercises/edit'
  get 'workouts/index'
  get 'workouts/show'
  get 'workouts/new'
  get 'workouts/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
