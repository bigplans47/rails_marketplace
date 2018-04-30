class Book



  def make_NYT_API_call
    response = RestClient::Request.execute(method: :get, url: 'http://api.nytimes.com/svc/books/v3/lists/names.json', headers: {api_key: 'be5ffc44e6454459a6ccd09b9e9d2e0c'})
    JSON.parse(response)
  end

end
