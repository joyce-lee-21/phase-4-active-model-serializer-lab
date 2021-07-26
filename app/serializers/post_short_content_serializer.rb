class PostShortContentSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    "#{self.object.content[0..39]}..."
  end
  
  # has_many :post_tags
  # has_many :tags, serializer: TagSerializer
end
