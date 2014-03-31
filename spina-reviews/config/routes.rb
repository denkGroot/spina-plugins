Spina::Engine.routes.draw do
  namespace :admin do
    resources :reviews
  end
end
