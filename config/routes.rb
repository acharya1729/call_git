Rails.application.routes.draw do
  get 'issues/index'
  
  root 'issues#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
