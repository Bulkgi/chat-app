Rails.application.routes.draw do
  devise_for :insralls
  get 'messages/index'
  root to: "messages#index"
end
