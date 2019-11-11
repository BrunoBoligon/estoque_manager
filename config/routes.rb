Rails.application.routes.draw do
  resources :movimentacao_estoques
  resources :produtos
  resources :pessoas
  resources :operacaos
  resources :operacos
  resources :enderecos
  resources :grupo_produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
