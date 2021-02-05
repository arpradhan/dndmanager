Rails.application.routes.draw do
  root "home#index"
  
  resources :characters

  resources :races do
    resources :subraces
  end

  patch "/races/:id/languages", to: "races#languages", as: "race_languages"
  patch "/races/:id/race_trait", to: "races#race_trait", as: "race_race_trait"

  resources :languages

  resources :proficiencies

  resources :race_traits

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
