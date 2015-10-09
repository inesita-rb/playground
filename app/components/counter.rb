class Counter
  include Inesita::Component

  def inc
    store.inc(props[:name])
    update!
  end

  def dec
    store.dec(props[:name])
    update!
  end

  def reset
    @number = 0
    update!
  end

  def number
    store.get_value(props[:name])
  end

  def change(e)
    store.set_value(props[:name], `e.target.value`.to_i)
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
              input type: "text", class: "form-control", value: number, onchange: ->(e) { change(e) }
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
