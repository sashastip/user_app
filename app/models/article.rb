require 'Elasticsearch/model'

class Article < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.search(query)
    __elasticsearch__.search(
      {
        query: {
          multi_match: {
            query: query,
            fields: ['title^10', 'text']
          }
        }
      }
    )
  end

  setting index: { number_of_shards: 1 } do
    mapping dynamic: 'false' do 
      indexes :title, analyzer: 'english'
      indexes :text, analyzer: 'english'
    end
  end
end

Article.import
