module CounterStore

  def init_counter_store
    @counters = {
      a: 0,
      b: 0,
      c: 0
    }

    every 1 do
      @counters[@counters.keys.sample] += 1
      update_dom
    end
  end

  def get_value(name)
    @counters[name]
  end

  def set_value(name, value)
    @counters[name] = value
  end

  def inc(name)
    @counters[name] += 1
  end

  def dec(name)
    @counters[name] -= 1
  end
end
