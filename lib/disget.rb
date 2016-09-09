require "disget/version"
require "nokogiri"
require "httparty"

module Disget
  class Robot

    def say_hello
      puts 'This is zerp. Coming in loud and clear. Over.'
    end

    def search(string)
      youtube_search = Nokogiri::HTML(HTTParty.get("https://www.youtube.com/results?search_query=#{string}"))
      first_result = youtube_search.css("#results .section-list .item-section li").first
      video_link = first_result.css(".yt-lockup-content h3 a").map { |link| link['href'] }
      video_link = "https://www.youtube.com#{video_link[0]}"
      return video_link
    end
  end
end
