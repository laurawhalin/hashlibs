Rails.application.routes.draw do
  root "welcome#index"
  resources :word_set
end
