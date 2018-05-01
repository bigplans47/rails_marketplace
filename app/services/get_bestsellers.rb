class Bestseller
  def self.get_bestseller_list
    response = RestClient::Request.execute(method: :get, url: 'http://api.nytimes.com/svc/books/v3/lists/names.json', headers: { api_key: [NYT_API_KEY]})
  end
end
