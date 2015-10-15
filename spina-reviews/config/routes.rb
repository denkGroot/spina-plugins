Spina::Engine.routes.draw do
  namespace :admin do
    resources :reviews do
      member do
        post 'confirm'
      end
    end
  end
end
