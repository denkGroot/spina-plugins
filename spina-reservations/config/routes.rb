Spina::Engine.routes.draw do

  namespace :reservations, path: nil do
    resources :reservations, only: [:create]

    namespace :admin, path: Spina.config.backend_path do
      resources :reservations
    end
  end

end
