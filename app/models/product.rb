class Product < ActiveRecord::Base

  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  attr_accessible :description, :image_url, :price, :title
  # A series of validations
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true

  validates :image_url, allow_blank: true, format: {
  	with: %r{\.(gif|jpg|png)$}i,
  	message: 'must be a URL for GIF, JPG or PNG image.'
  }


  private

  def ensure_not_referenced_by_any_line_item
  	if line_items.empty?
  		return true
  	else
  		errors.add(:base, 'Line items present.')
  		return false
  	end
  end
end
