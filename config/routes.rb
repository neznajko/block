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
  get  "/articles/new", to: "articles#new",   as: "new_article"
  get  "/articles/:id", to: "articles#show",  as: "article"
  post "/articles",     to: "articles#create"
end
########################################################
# log:
# 2/29/2024
# - /articles( index )
# - Article( title: string, body: text )
# - /article/:id( show )
# 3/01/2024
# - Bootstrap
# - link_to
# 3/04/2024
# - articles#new
# - articles#create
#