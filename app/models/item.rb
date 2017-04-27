class Item < ActiveRecord::Base
  validates :title, presence: true,
                    uniqueness: true

  validates :price, presence: true

  belongs_to :category
end
