class ArticlesController < ApplicationController
  
    def show
        @article = Articale.find(params[:id])
    end

    def index
        @articles = Articale.all
    end

    def new
        @article = Articale.new
    end

    def create
        @article = Articale.new(params.require(:articale).permit(:title, :description))
        if @article.save
            flash[:notice] = "Article was successfully added"
            redirect_to article_path(@article)
        else
            render 'new', status: :unprocessable_entity
        end
    end

end
