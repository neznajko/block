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
      render 'articles/show'
    end
  end
  private
  def comment_params
    params.require( :comment )
          .permit( :commenter, :body )
  end
end
################################################################
################################################################
################################################################
################################################################
