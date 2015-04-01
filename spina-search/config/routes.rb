Spina::Engine.routes.draw do
  get '/search', to: 'search#query', format: :json, as: :search
end