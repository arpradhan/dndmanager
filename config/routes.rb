Rails.application.routes.draw do
  root "home#index"
  
  resources :characters

  resources :races do
    resources :subraces
  end

  patch "/races/:id/languages", to: "races#languages", as: "race_languages"

  resources :languages

  resources :proficiencies

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
