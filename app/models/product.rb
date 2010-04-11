class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :discount
  belongs_to :photo
end
