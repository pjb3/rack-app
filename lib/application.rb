class Application
  def initialize
    @router = Router.new
  end

  def call(env)
    @router.route(Rack::Request.new(env))
  end
end
