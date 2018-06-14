Rails.application.routes.draw do
  resources :tirages
  get "grilles" => "grilles#index"
  get "grilles-succes" => "pages#succes"
  get "admin-grilles" => "grilles#gestion"
  get "mes-grilles" => "pages#mesGrilles"
  get "retrait" => "retraits#index"
  get "historique-tirage" => "tirages#histoTir"
  get "historique-tirage/:id" => "tirages#showhistoTir"
  post "admin-grilles" => "grilles#retri"
  post "admin-remun" => "grilles#remun"
  post "admin-code" => "grilles#code"
  post "init" => "pages#init"
  post 'grilles' => 'grilles#create'
  post 'retrait-form' => 'retraits#create'
  get 'admin-retrait' => 'retraits#adminRetrait'
  get "report" => "reports#index"
  devise_for :users
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
