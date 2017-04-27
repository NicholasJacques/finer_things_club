class Item < ActiveRecord::Base
  validates :title, presence: true,
                    uniqueness: true

  validates :price, presence: true
  validates :description, presence: true

  belongs_to :category
end
