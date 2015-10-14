class Counters
  include Inesita::Component
  def render
    component Counter, props: { name: :a }
    component Counter, props: { name: :b }
    component Counter, props: { name: :c }
  end
end

