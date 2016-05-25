require 'elasticsearch/model'

class Article < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  validates :title, :text, presence: true

  def as_indexed_json(options={})
    self.as_json(
      only: [:id, :title, :text]
      )
  end
end

Article.import
