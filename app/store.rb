class Store
  include Inesita::Injection

  include CounterStore
  include ReposStore

  def initialize
    init_counter_store
    init_repos_store
  end
end
