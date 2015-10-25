module ReposStore
  def init_repos_store
    @repos = []
  end

  def fetch_repos
    Browser::HTTP.get 'https://api.github.com/repositories' do |req|
      req.on :success do |res|
        @repos = res.json
        update_dom
      end
    end
  end

  def repos
    @repos
  end
end
