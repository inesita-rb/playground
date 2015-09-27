class Counter
  include Inesita::Component

  components :number

  def initialize
    @number = CounterNumber.new
  end

  def inc
    number.number += 1
    update!
  end

  def dec
    number.number -= 1
    update!
  end

  def render
    dom do
      div class: 'container' do
        div class: 'row' do
          div class: 'col-lg-2' do
            label do
              text 'Counter:'
            end
          end
          div class: 'col-lg-2' do
            div class: 'input-group' do
              span class: 'input-group-btn' do
                button class: 'btn btn-default', onclick: -> { dec } do
                  text '-'
                end
              end
              component number
              span class: 'input-group-btn' do
                button class: 'btn btn-default', onclick: -> { inc } do
                  text '+'
                end
              end
            end
          end
        end
      end
    end
  end
end
