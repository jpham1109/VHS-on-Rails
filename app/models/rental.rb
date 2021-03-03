class Rental < ApplicationRecord
  belongs_to :client
  belongs_to :vhs

  def movie_from_vhs
    Movie.find(self.vhs.movie_id)
  end 
  
end
