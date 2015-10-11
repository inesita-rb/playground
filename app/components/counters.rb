class Counters
  include Inesita::Component
  def render
    dom do
      component Counter, props: { name: :a }
      component Counter, props: { name: :b }
      component Counter, props: { name: :c }
    end
  end
end

