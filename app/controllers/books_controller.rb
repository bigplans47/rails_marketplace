class BooksController < ApplicationController

  def show
    api_call = Book.new
    @response = api_call.API_call()
  end

end
