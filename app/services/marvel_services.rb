module Services

class MarvelServices

    include HTTParty

    def self.get_creatures
        @api_key = ENV['MARVEL_APIKEY']
        @response = HTTParty.get("http://gateway.marvel.com/v1/public/characters?ts=2018-1-03T15:55:10Z&apikey=#{@api_key}&hash=4f07bd8324b0351e5df9d28332895079")
        
    end

end
end