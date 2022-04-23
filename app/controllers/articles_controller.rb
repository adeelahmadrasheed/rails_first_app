class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end
	
	def create
	#	@article = Article.create
	
	# Debugging if the value is getting passed in params
	#render plain: params[:article].inspect
	
	# creating new article and saving article_parameters in database
	@article = Article.new(article_params)
	@article.save

	# redirecting to show template for article entry 
	redirect_to articles_show(@article)
	end

	def article_params
		params.require(:article).permit(:title, :description)
		
	end




end