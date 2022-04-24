class ArticlesController < ApplicationController
	
	def index
		@articles = Article.all



		
	end

	def new
		@article = Article.new
	end
	
	def create
		#	@article = Article.create
		
		# Debugging if the value is getting passed in params
		#render plain: params[:article].inspect
		
		# creating new article and saving article_parameters in database
		@article = Article.new(article_params)
			if @article.save
				# condition
				flash[:notice] = "Artilce is successfully created."
				redirect_to article_path(@article)

			else
				#rendering new.html.erb template
				render 'new'
			end


		# @article.save

		# # redirecting to show template for article entry 

	end
	
	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
			flash[:notice] = "Article is successfully updated"
			redirect_to article_path(@article)
		else
			render 'edit'
		end
	end
	#### Updating/ editing entries
	

	def edit
		@article = Article.find(params[:id])
	end

	
	def show
		@article = Article.find(params[:id])
		
	end

	
	def delete

		
	end

	private

		def article_params
			params.require(:article).permit(:title, :description)
			
		end



 
end