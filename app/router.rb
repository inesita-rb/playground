class Router
  include Inesita::Router

  def routes
    route '/', to: Home
    route 'welcome', to: Welcome
    route 'goodbye', to: Goodbye
    route 'counter', to: Counter
    route 'test' do
      route ':id', to: Welcome
    end
  end
end
