########################################################
########################################################
########################################################
########################################################
# B 
# W
#
#            _
class ArticlesController < ApplicationController

    def index
    end

    # (8) 毎晩、何時ごろ寝ますか。
    #     １１：３０。
    def all
        @articles = Article.all
    end
    # - Um wie viel Uhr gehst du jeden Abend ins Bett? 
    # - 11:30.

    # (7) 今晩、何をしますか。
    #     食べます キュフテタ。
    def new
        @article = Article.new
    end
    # - Heute Abend was machst du?
    # - Ich esse Kjufteta.

    # (6) 朝、何を食べますか。
    #     ハンバーガー。
    def show
        @article = find_article
        # pass new comment here, so if comments controller's
        # create action fails to save the comment the view
        # will hold reference to @comment so it can print
        # the errors
        @comment = @article.comments.new
    end
    # - Morgens was isst du?
    # - Hamburger.( not Sport-Verein )

    # (5) 週末はどこで行くますか。
    #     わかりません。
    def create
        @article = Article.new( article_params )
        if @article.save
            redirect_to @article, notice: "Success", alert: "wtf?"
        else
            render :new
        end
    end
    # - Wohin gehst du am Wochenende?
    # - Ich weiß es nicht.

    # (4) スポーツをしますか。
    #     ちょっと。
    def edit
        @article = find_article
    end
    # - Treibst du sport?
    # - Ein bisschen.

    # (3) いつにテレビを見ますか。
    #     ぜんぜんません。
    def update
        @article = find_article
        if @article.update( article_params )
            redirect_to article_path
        else
            render :edit
        end
    end
    # - Wann siehst du fern?
    # - Nie.( neva beginze! )

    # (2) どこで勉強しますか。
    #     うち。
    def destroy
        article = find_article
        article.destroy
        redirect_to articles_path 
    end
    # - Wo studierst du?
    # - Zu Hause.
    private
    # (1) 何時に起きますか。
    #     ０５：３０。 
    def article_params
        params.require( :article )
              .permit( :title, :body )
    end
    # - Um wie viel Uhr stehst du auf?
    # - 05:40.
end
########################################################
########################################################
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
########################################################
########################################################
