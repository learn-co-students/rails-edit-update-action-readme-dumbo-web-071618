class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		# raise params.inspect
		# Query the database for the Post record that matches the :id passed to the
		# route.
		# Store the query in an instance variable.
		@post = Post.find(params[:id])
		# Update the values passed from the form
		# Save the changes in the database.
		@post.update(title: params[:title], description: params[:description])
		# Redirect the user to the show page so they can see the updated record.
		redirect_to post_path(@post)
	end
end
