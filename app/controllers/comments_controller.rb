class CommentsController < ApplicationController
  load_and_authorize_resource

  def create
    @book = Book.find(params[:book_id])
    c = Comment.new(params[:comment])
    c.user_id = current_user.id
    c.book_id = params[:book_id]
    if c.save
      redirect_to book_path(@book)
    end
  end
end
