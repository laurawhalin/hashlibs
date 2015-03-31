Rails.application.routes.draw do
  root "welcome#index"
  resources :word_set
  get "pirate", to: "word_set#pirate"
end
