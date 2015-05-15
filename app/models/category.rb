class Category < ActiveRecord::Base
  has_many :products, dependent: :destroy

  validates_uniqueness_of :name
  validates_presence_of :name
end
