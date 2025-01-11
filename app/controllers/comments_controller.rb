################################################################
################################################################
################################################################
################################################################
class CommentsController < ApplicationController
  # らい年｜中国｜に｜かえります。
  # /articles/:id/comments
  def create
    @article = find_article
    @comment = @article.comments.build( comment_params )
    if @comment.save
      redirect_to @article
    else
      # reloading the brouswer here will send a GET
      # request to /articles/:id/comments
      render 'articles/show'
    end
  end
  #
  def destroy
      @article = Article.find( params[ :article_id ])
      @comment = @article.comments.find( params[ :id ])
      @comment.destroy
      redirect_to @article
  end
  #
  private
  def comment_params
    params.require( :comment )
          .permit( :commenter, :body, :status )
  end
end
################################################################
################################################################
################################################################
################################################################
