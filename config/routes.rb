Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  ######################################################
  # Defines the root path route ("/")
  root "articles#index"
  ######################################################
  # bleiben                                      to stay
  # auflegen                                  to hang up
  get  "/articles",     to: "articles#all"
  # put new fyorst to avoid taking it as parameter
  get  "/articles/new", to: "articles#new",   as: "new_article"
  get  "/articles/:id", to: "articles#show",  as: "article"
  post "/articles",     to: "articles#create"
  # 
  get    "/articles/:id/edit", to: "articles#edit", as: "edit_article"
  patch  "/articles/:id",      to: "articles#update"
  delete "articles/:id",       to: "articles#destroy"

end
########################################################
# log:
# 19/03/2024
# - comment model
########################################################