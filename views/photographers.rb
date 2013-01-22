class App
  module Views
    class Photographers < Layout
      def p_header
        @t.artists_title
      end
      #Thomas
      def thomas_name
        @t.bio.thomas_name
      end
      def thomas
      	@t.bio.thomas
      end
      #Bjorn
      def bjorn_name
        @t.bio.bjorn_name
      end
      def bjorn
        @t.bio.bjorn
      end
      #Fokko
      def fokko_name
        @t.bio.fokko_name
      end

      def fokko
        @t.bio.fokko
      end
      #Fernando
      def fernando_name
        @t.bio.fernando_name
      end
      def fernando
        @t.bio.fernando
      end
      #Martin
      def martin_name
        @t.bio.martin_name
      end
      def martin
        @t.bio.martin
      end

    end
  end
end