class App
  module Views
    class Layout < Mustache
      def title 
        if @path_info == '/'
          page = '/home'
        else
          page = @path_info
        end
        @t.title[page[1..-1]]
      end

      def keywords
        @t.msg.keywords
      end

      def description
        @t.msg.description
      end

      def menu_links
        @t.menu_links
      end

      def menu
        { :home_active => @path_info == "/", 
          :about_active => @path_info == "/about",
          :photographers_active => @path_info == "/photographers"
        }
      end
    end
  end
end
