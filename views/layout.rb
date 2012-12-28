class App
  module Views
    class Layout < Mustache
      def title 
        @title
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
