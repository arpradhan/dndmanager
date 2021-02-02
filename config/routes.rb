Rails.application.routes.draw do
  root "home#index"
  
  resources :characters

  resources :races do
    resources :subraces
  end

  resources :languages

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
