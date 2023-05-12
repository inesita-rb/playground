require 'inesita'
require 'inesita-router'

require 'promise'
require 'browser'
require 'browser/socket'
require 'browser/interval'
require 'browser/http'

require_tree './stores'
require 'store'

require 'router'
require_tree './components'

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

$document.ready do
  Application.mount_to($document.body)
end
