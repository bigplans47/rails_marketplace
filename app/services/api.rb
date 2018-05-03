class Api
  def API_call
    response = RestClient::Request.execute(method: :get, url: 'https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json', headers: {api_key: ENV['NYT_API_KEY'] } )
    array =[]
    JSON.parse(response)["results"]["books"].each do |one|
      array.push(one["title"])
      puts one["title"]
    end
    array

    output = ''
    JSON.parse(response)["results"]["books"].each do |one|
      output << (one["title"]).split(" ").map{|word| word.capitalize}.join(" ") + ', '
      puts one["title"]
    end
    output

  end
end
