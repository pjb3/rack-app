class Router
  def route(request)
    if request.get?
      if request.path == '/about'
        controller = AboutController.new(request)
        controller.show
      elsif request.path =~ /\/bios\/.+/
        controller = BiosController.new(request)
        controller.show
      else
        controller = HomeController.new(request)
        controller.show
      end
    else
      "It was something else!"
    end
  end
end
