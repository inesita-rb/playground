class Router
  include Inesita::Router

  def routes
    route '/', to: Home
    route '/description', to: Description
    route '/counter', to: Counters
  end
end
