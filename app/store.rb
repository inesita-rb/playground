class Store
  include Inesita::Store

  include CounterStore
  include ReposStore

  def initialize
    init_counter_store
    init_repos_store
  end
end
