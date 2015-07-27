require 'virtual-dom'
require 'opal'
require 'browser'
require 'inesita'

require 'components/navbar'
require 'components/layout'
require 'components/home'
require 'components/welcome'
require 'components/goodbye'
require 'components/counter_number'
require 'components/counter'

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
