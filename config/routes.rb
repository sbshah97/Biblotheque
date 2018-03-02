Rails.application.routes.draw do
  resources :book_details
  resources :ideas
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: redirect('/book_details')

end
