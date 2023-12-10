class ArticlesController < ApplicationController
  
    def show
        @article = Articale.find(params[:id])
    end

end
