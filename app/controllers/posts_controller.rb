class PostsController < ApplicationController
  def new
    @post = Post.new
    @post.post_categories.build
  end

  def create
    @post = Post.new(create_params)
    @post.save!
  rescue ActiveRecord::RecordInvalid
    puts "ERROR"
  end

  def edit
    @post = Post.find(params[:id])
    unless @post.post_categories.present?
      @post.post_categories.build
    end
  end

  def update
    @post = Post.find(params[:id])

    ActiveRecord::Base.transaction do
      @post.update!(update_params)
    end
  rescue ActiveRecord::RecordInvalid
    puts "ERROR"
  end

  private
  def create_params
    params.require(:post).permit(:description, post_categories_attributes: [:post_category_id])
  end

  def update_params
    params.require(:post).permit(:description, post_categories_attributes: [:id, :post_category_id])
  end
end
