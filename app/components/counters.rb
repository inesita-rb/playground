class Counters
  include Inesita::Component
  def render
    dom do
      component Counter, count: 1
      component Counter, count: 2
      component Counter, count: 3
      component Counter, count: 4
    end
  end
end

