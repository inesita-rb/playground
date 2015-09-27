class CounterNumber
  include Inesita::Component
  attr_accessor :number

  def initialize
    @number = 0
  end

  def random_style
    {
      color: %w(red green blue).sample
    }
  end

  def reset
    @number = 0
    update!
  end

  def change(e)
    @number = `e.target.value`.to_i
    update!
  end

  def render
    dom do
      input type: "text", class: "form-control", value: number, onchange: ->(e) { change(e) }
    end
  end
end
