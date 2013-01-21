class App
  module Views
    class Index < Layout
    	def main
    		@t.main
    	end

    	def newsblock_header
    		@t.newsblock_header
    	end
        def news_out
		    news_file = YAML::load_file('./news/news.yaml')
  		end
    end
  end
end
