require 'inesita'

require 'browser'
require 'browser/socket'
require 'browser/interval'
require 'browser/http'

require 'virtual_dom/support/browser'

require_tree './stores'
require_tree './components'

require 'layout'
require 'router'
require 'store'

# fix headers
Browser::HTTP::Request::HEADERS.delete('X-Opal-Version')

$document.ready do
  App = Inesita::Application.new(
    router: Router,
    store: Store,
    layout: Layout
  ).mount_to($document.body)
end
