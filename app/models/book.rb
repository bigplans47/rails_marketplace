class Book



  def make_NYT_API_call
    response = RestClient::Request.execute(method: :get, url: 'http://api.nytimes.com/svc/books/v3/lists/names.json', headers: {api_key: ENV['NYT_API_KEY'] } )
    JSON.parse(response)
  end

end
