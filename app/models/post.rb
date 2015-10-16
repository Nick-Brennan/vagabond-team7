class Post < ActiveRecord::Base
	validates :title, :content, presence: true
	belongs_to :user
	belongs_to :city

	attr_accessor :keywords
  @@alchemy_url ||= 'http://gateway-a.watsonplatform.net/calls/text/TextGetRankedKeywords'

  def get_keywords
    res = Typhoeus.get(
      @@alchemy_url,
      params: {
        apikey: ENV['API_KEY'],
        text: content,
        maxRetrieve: 10,
        sentiment: 0,
        outputMode: "json"
      }
    )
    puts "keyword search: " + res.body.to_s
    kwords = JSON.parse(res.body)
    if kwords['keywords'] != nil
	    words = kwords['keywords'].map { |w| w['text'] }
	    @keywords = words.join(" | ")
  	end
  end
end
