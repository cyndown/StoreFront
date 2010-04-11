class StoreController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
    
  def index
    view
  end
  
  def view
    unless params[:name]
      @products = Product.all    
    else
      @products = Product.find_by_genre(params[:name].capitalize)
    end
    render "index"
  end
  
  private
  
  def record_not_found
    render :file => "#{Rails.root}/public/404.html", :layout => false, :status => 404
  end  
end
