class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }
  validates_presence_of :title, :description, :price
  

  def average_rating
    self.reviews.average(:rating)
  end
end
