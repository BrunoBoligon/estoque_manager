Rails.application.routes.draw do
  resources :movimentacao_estoques
  resources :pessoas
  resources :enderecos
  resources :cidades
  resources :estados
  resources :produtos
  resources :unidades
  resources :operacaos
  resources :operacos
  resources :grupo_produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
