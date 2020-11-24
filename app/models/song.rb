class Song < ApplicationRecord
    def self.search(string)
        
        @search = Song.where('LOWER(title) LIKE?', "%#{string.downcase}%")
    end
end
