class Goodbye
  include Inesita::Component

  def render
    dom do
      div class: 'jumbotron text-center' do
        h1 do
          text "Bye, Bye ..."
        end
        h4 do
          text 'This is a sample component'
        end
      end
    end
  end
end
