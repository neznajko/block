class ApplicationController < ActionController::Base
  protected
  def find_article
    Article.find( params[ :id ])
  end
end
