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

      def home
        @t.links.home
      end

      def event
        @t.links.event
      end

      def photographers
        @t.links.photographers
      end

      def form_header
        @t.form.header
      end

      def form_placeholder
        @t.form.placeholder
      end

      def form_submit
        @t.form.submit
      end

      def feedback
        @t.feedback
      end

      def vk_message
        @t.vk_message
      end

      def fb_message
        @t.fb_message
      end

      def px_message
        @t.px_message
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
