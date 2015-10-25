class AuthorsController < ApplicationController
  def show
    @author = Author.new
  end

  def create
    @author = Author.new(create_params)
    @author.save!
  rescue ActiveRecord::RecordInvalid
    puts "ERROR"
  end

  private
  def create_params
    params.require(:author).permit(:name, books_attributes: [:title])
  end

end
