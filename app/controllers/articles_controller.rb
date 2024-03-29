########################################################
########################################################
########################################################
########################################################
########################################################
class ArticlesController < ApplicationController

    def index
        #
        # enregisterment                       recording
    end

    ####################################################
    def all
        # 
        # auf Wiederhören                       good-bye
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def show
      @article = find_article
      @comment = @article.comments.build
    end

    def create
        @article = Article.new( article_params )
        if @article.save
          redirect_to @article, notice: "Success", alert: "wtf?"
        else
          print( ">  >", @article.errors.any? )
          render :new
        end
    end

    def edit
      @article = find_article
    end

    def update
      @article = find_article
      if @article.update( article_params )
        redirect_to article_path
      else
        render :edit
      end
    end

    def destroy
      article = find_article
      article.destroy
      redirect_to articles_path 
    end

    private
    
    def article_params
        params.require( :article )
              .permit( :title, :body )
    end

end
########################################################
########################################################
#（１）よんひゃくななじゅう　４７０
#（２）はっぴゃくごじゅうさん　８５３
#（３）せんさんひゃく　１３００
#（４）いちまんななせん　１７０００
#（５）さんぜんろっぴゃくじゅうに　３６１２
#（６）ごせんひゃくきゅうはち　５１９８
#（７）よんまんろくせんきゅうひゃく　４６９００
#（８）きゅうまｎにひゃくじゅう　９０２１０
########################################################
########################################################
