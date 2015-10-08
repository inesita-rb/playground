require 'virtual-dom'
require 'opal'
require 'browser'
require 'inesita'

require 'router'
require_tree './components'

$document.ready do
  App = Inesita::Application.new(
    router: Router,
    layout: Layout
  ).mount_to($document.body)
end
