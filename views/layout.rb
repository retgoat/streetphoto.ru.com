class App
  module Views
    class Layout < Mustache
      def title 
        @title
      end
      def active_link
      	@active_link = "menu-item-active"
      end
    end
  end
end
