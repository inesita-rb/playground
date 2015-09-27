require 'virtual-dom'
require 'opal'
require 'browser'
require 'inesita'

require 'router'
require_tree './components'

$document.ready do
  App = Inesita::Application.new(
    router: Router.new,
    layout: Layout.new
  ).mount!($document.body)
end
