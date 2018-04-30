class BooksController < ApplicationController

  def show
    api_call = Book.new
    @response = api_call.make_NYT_API_call()
  end

end
