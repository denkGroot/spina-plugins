Spina::Engine.routes.draw do
  resources :reservations, only: [:create]
end
