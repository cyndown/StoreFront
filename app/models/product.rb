class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :genre
  belongs_to :discount
  belongs_to :photo
    
  def discounted_price
    self.price * (1 - self.discount.rate)
  end
  
  private
  
  def self.find_by_genre(genre_name)
    self.where(:genre_id => Genre.find_by_name(genre_name)).all
  end
end
