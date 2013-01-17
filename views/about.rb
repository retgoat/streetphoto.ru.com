class App
  module Views
    class About < Layout
    	
      def e_header
    		@t.eventinfo.eventheader
    	end

    	def e_place
    		@t.eventinfo.eventplace
    	end

      def e_date
        @t.eventinfo.eventdate
      end

    end
  end
end