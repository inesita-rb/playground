class Store
  include Inesita::Store

  def initialize
    @store = {
      a: 0,
      b: 0,
      c: 0
    }

    every 1 do
      @store[@store.keys.sample] += 1
      update_dom
    end
  end

  def get_value(name)
    @store[name]
  end

  def set_value(name, value)
    @store[name] = value
  end

  def inc(name)
    @store[name] += 1
  end

  def dec(name)
    @store[name] -= 1
  end
end
