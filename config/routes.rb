Rails.application.routes.draw do
  get "uf/:fecha", to: "ufs#consultar"
  get "client/:name", to: "ufs#consultar_estados"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
