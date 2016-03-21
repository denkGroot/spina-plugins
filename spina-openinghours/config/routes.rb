Spina::Engine.routes.draw do

  namespace :openinghours, path: nil do
    namespace :admin, path: Spina.config.backend_path do
      resources :openinghours
    end
  end

end
