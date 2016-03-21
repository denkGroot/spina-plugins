Spina::Engine.routes.draw do

  namespace :search, path: nil do
    get '/search', to: 'search/search#query', format: :json, as: :search
  end

end
