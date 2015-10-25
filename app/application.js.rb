require 'virtual-dom'
require 'opal'
require 'browser'
require 'browser/interval'
require 'browser/http'
require 'inesita'

require_tree './stores'
require_tree './components'

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

