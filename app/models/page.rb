class Page < ActiveRecord::Base

  translates :title, :body

  validates :slug, uniqueness: true, presence: true

  before_validation :slugify

  def slugify
    self.slug ||= title.parameterize
  end

  def to_param
    slug
  end
end
