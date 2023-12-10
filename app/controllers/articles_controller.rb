class ArticlesController < ApplicationController
  
    def show
        @article = Articale.find(params[:id])
    end

    def index
        @articles = Articale.all
    end

end
