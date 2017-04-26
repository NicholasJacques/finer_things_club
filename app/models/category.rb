class Category < ActiveRecord::Base
  before_validation :generate_slug

  validates :slug, uniqueness: true,
                   presence: true

  has_many :items

  def to_param
    slug
  end

  def self.find(input)
    if input.to_i != 0
      super
    else
      find_by_slug(input)
    end
  end

  def generate_slug
    self.slug = title.parameterize
  end
end
