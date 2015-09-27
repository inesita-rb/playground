class NavBar
  include Inesita::Component

  def render
    dom do
      nav class: 'navbar navbar-default' do
        div class: 'container' do
          div class: 'navbar-header' do
            span class: 'navbar-brand' do
              text 'Inesita'
            end
            ul class: 'nav navbar-nav' do
              li class: "#{"active" if router.path == '/'}" do
                a href: router.url_for(:home) do
                  text 'Home'
                end
              end
              li class: "#{"active" if router.path == '/welcome'}" do
                a href: router.url_for(:welcome) do
                  text 'Welcome'
                end
              end
              li class: "#{"active" if router.path == '/goodbye'}" do
                a href: router.url_for(:goodbye) do
                  text 'Goodbye'
                end
              end
              li class: "#{"active" if router.path == '/counter'}" do
                a href: router.url_for(:counters) do
                  text 'Counter'
                end
              end
            end
          end
        end
      end
    end
  end
end
