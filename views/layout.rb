class App
  module Views
    class Layout < Mustache
      def title 
        @title || "qa"
      end

      # def menu_active
      # 	@main_active = "menu-item-active"
      # end
    end
  end
end
