class Genre < ActiveRecord::Base
  def self.find_by_name(name)
    begin
      genre = self.where(:name => name).first
      genre.id
    rescue
      raise ActiveRecord::RecordNotFound
    end
  end
end