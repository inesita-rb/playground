require 'virtual-dom'
require 'opal'
require 'browser'
require 'inesita'

require_tree './components'

$document.ready do
  Inesita::Application.new(
    routes: {
      '/' => Home,
      '/welcome' => Welcome,
      '/goodbye' => Goodbye,
      '/counter' => Counter
    },
    layout: Layout
  ).mount($document.body)
end
