Rails.application.routes.draw do
  resources :categorias
  resources :estoques
  resources :produtos
  resources :subcategorias
end

# Rails.application.routes.draw do
#   root to: "produtos#index"
#   resources :categorias
#   resources :estoques
#   resources :produtos
#   resources :subcategorias
# end