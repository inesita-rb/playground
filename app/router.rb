class Router
  include Inesita::Router

  def routes
    route '/', to: Home
    route '/description', to: Description
    route '/counters', to: Counters
    route '/repositories', to: Repositories
  end
end
