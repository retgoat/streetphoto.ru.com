class App
  module Views
    class Index < Layout
    	def main
    		@t.main
    	end

    	def newsblock_header
    		@t.news.newsblock_header
    	end

    	# def news_1_header
    	# 	@t.news.n1.header
    	# end

    	# def news_1_date
    	# 	@t.news.n1.date
    	# end

    	# def news_1_body
    	# 	@t.news.n1.body
    	# end
  	  def news_out
		    news_file = YAML::load_file('./news/news.yaml')
  		end
    end
  end
end
