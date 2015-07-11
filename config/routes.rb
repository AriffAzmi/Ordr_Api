Rails.application.routes.draw do
  
    namespace :api do
      get     "/foods",     to: "foods#index"
      post    "/foods",     to: "foods#create"
      get     "/foods/:id", to: "foods#show"
      put     "/foods/:id", to: "foods#update"
      delete  "/foods/:id", to: "foods#destroy"
    end

    namespace :api do
      get     "/drinks",     to: "drinks#index"
      post    "/drinks",     to: "drinks#create"
      get     "/drinks/:id", to: "drinks#show"
      put     "/drinks/:id", to: "drinks#update"
      delete  "/drinks/:id", to: "drinks#destroy"
    end

  get 'users/new'
  get 'users/show'
  
  # get 'foods/new'
  # get 'foods/index'
  # get 'foods/show'
  # delete 'foods'  => 'foods#destroy'
  
  # get 'drinks/new'
  # get 'drinks/index'
  # get 'drinks/show'
  # get 'drinks/edit'

    resources :users
  # resources :foods
  # resources :drinks
  
end