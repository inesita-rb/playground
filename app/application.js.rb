require 'virtual-dom'
require 'opal'
require 'browser'
require 'inesita'

require_tree './components'

$document.ready do
  CounterComponent.new.mount($document['counter'])
end
