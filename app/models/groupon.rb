class Groupon < ActiveRecord::Base
  attr_accessible :description, :original_price, :price, :title, :stock, :created_at, :duration

  has_many :groupon_links

  #before_destroy :ensure_not_referenced_by_any_line_item

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