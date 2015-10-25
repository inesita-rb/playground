class NavBar
  include Inesita::Component

  ROUTES = %i(home description counters repositories)

  def render
    nav class: 'navbar navbar-default' do
      div class: 'container' do
        div class: 'navbar-header' do
          span class: 'navbar-brand' do
            text 'Inesita'
          end
          ul class: 'nav navbar-nav' do
            ROUTES.each do |route|
              li class: "#{'active' if router.current_url?(route)}" do
                a href: router.url_for(route) do
                  text route.capitalize
                end
              end
            end
          end
        end
      end
    end
  end
end
