class Post < ApplicationRecord
  has_rich_text :content

  validates :title, presence: true
  validates :content, presence: true
  validates :slug, presence: true, uniqueness: true

  enum status: { draft: 0, published: 1 }

  def to_param
    slug
  end
end
