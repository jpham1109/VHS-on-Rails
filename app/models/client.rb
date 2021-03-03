class Client < ApplicationRecord
    has_many :rentals
    has_many :vhs, through: :rentals
    validates :name, presence: true
    validates :home_address, presence: true, uniqueness: true 

    def movie_from_vhs
        self.vhs.map{|vhs| vhs.movie.title}
    end
end
