class Repositories
  include Inesita::Component

  def fetch_repos
    store.fetch_repos
  end

  def render
    button class: 'btn btn-default', onclick: -> { fetch_repos } do
      text 'Fetch repos'
    end
    table class: 'table' do
      thead do
        tr do
          th { text '#ID' }
          th { text 'Name' }
          th { text 'Avatar' }
          th { text 'Owner' }
        end
      end
      tbody do
        store.repos.each do |repo|
          tr do
            th { text repo['id'] }
            td { text repo['name'] }
            td { img height: 25, width: 25, src: repo['owner']['avatar_url'] }
            td { text repo['owner']['login'] }
          end
        end
      end
    end
  end
end
