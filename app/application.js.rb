require 'inesita'
require 'inesita-router'

require 'browser'
require 'browser/socket'
require 'browser/interval'
require 'browser/http'

require 'virtual_dom/support/browser'

require_tree './stores'
require_tree './components'

require 'router'
require 'store'

# fix headers
Browser::HTTP::Request::HEADERS.delete('X-Opal-Version')

class Application
  include Inesita::Component

  inject Store
  inject Router

  def render
    div class: 'container' do
      component NavBar
      component router
    end
  end
end

Inesita::Browser.ready? do
  Application.mount_to($document.body)
end
