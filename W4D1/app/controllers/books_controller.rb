class BooksController < ApplicationController
  def index
    @books = Book.all
    # render :index
  end

  def new
    render :new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_url
  end

  def destroy
    begin
      book = Book.find(params[:id])
      book.destroy
    rescue
      puts 'couldnt find that book'
    end
    redirect_to books_url
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
end
