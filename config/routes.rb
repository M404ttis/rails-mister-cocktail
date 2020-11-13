Rails.application.routes.draw do

  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/destroy' <<< rails creted these =((((


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get    "cocktails",          to: "cocktails#index"
  # get    "cocktails/new",      to: "cocktails#new",  as: :new_cocktail
  # post   "cocktails",          to: "cocktails#create"
  # get    "cocktails/:id",      to: "cocktails#show", as: :cocktail
  # get    "cocktails/:id/edit", to: "cocktails#edit", as: :edit_cocktail
  # patch  "cocktails/:id",      to: "cocktails#update"
  # delete "cocktails/:id",      to: "cocktails#destroy"
  root to: "cocktails#index"

  resources :cocktails, only:[:show, :new, :create, :destroy] do
    # everything netsted will have "/cocktails/:id" in front
    resources :doses, only:[:new, :create]
  end
  # since deletaing the dose does not care for ingredients and cocktails, only when creating ?
  resources :doses, only:[:destroy]

end
