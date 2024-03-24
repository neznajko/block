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
  ######################################################
  get "/articles/:id/comments", to: "comments#index"

end
########################################################
# log:
# 19/03/2024
# - comment model
# 20/
# - comments controller( initial setup )
########################################################
# resources :articles do resources :comments end: This line nests the
# comments resource within the articles resource. This means that
# comments will be managed in the context of articles. It generates
# routes for CRUD operations on comments, but these routes will be
# prefixed with /articles/:article_id/, indicating that they belong to
# a specific article. So, the routes for comments will look like:

# GET /articles/:article_id/comments - index action of
# CommentsController: Displays all comments for a specific article.

# GET /articles/:article_id/comments/new - new action of CommentsController: Displays a form to create a new comment for a specific article.

# POST /articles/:article_id/comments - create action of CommentsController: Creates a new comment for a specific article.

# GET /articles/:article_id/comments/:id - show action of CommentsController: Displays a specific comment for a specific article.

# GET /articles/:article_id/comments/:id/edit - edit action of CommentsController: Displays a form to edit a specific comment for a specific article.

# PATCH/PUT /articles/:article_id/comments/:id - update action of CommentsController: Updates a specific comment for a specific article.

# DELETE /articles/:article_id/comments/:id - destroy action of CommentsController: Deletes a specific comment for a specific article
