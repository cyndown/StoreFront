class Discount < ActiveRecord::Base
  has_many :product  
  
  def formatted_discount
    sprintf("%0.0f%", self.rate * 100)
  end
end
