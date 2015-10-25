class PostsController < ApplicationController
  def show
    @post = Post.new
  end

  def create
    @post = Post.new(create_params)
    @post.save!
  rescue ActiveRecord::RecordInvalid
    puts "ERROR"
  end

  private
  def create_params
    params.require(:post).permit(:description, post_categories_attributes: [:post_category_id])
  end
end
