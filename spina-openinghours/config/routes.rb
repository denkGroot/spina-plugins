Spina::Engine.routes.draw do
  namespace :admin do
    resources :openinghours
  end
end
