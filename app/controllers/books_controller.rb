class BooksController < ApplicationController
  def index
    @books = Book.all
    @is_availible = Book.where(availible: true)
    @is_not_availible = Book.where(availible: false)
    # @availibleBook = Book.where(availible: )
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = 'Book added'
      respond_to do |format|
        format.html { redirect_to books_path }
        format.js
      end
    else
      flash[:alert] = 'Book not added'
      render :new
    end
    # binding.pry
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = 'Book updated'
      redirect_to books_path
    else
      flash[:alert] = 'Book not updated'
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = 'Book removed'
    respond_to do |format|
      format.html { redirect_to books_path }
      format.js
    end
    # redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :availible)
  end


  # def index
  #   api_call = Book.new
  #   @response = api_call.API_call()
  # end
end
