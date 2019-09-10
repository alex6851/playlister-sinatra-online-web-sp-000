class Song < ActiveRecord::Base
    has_many :song_genres
    belongs_to :artist
    has_many :genres, through: :song_genres
    def slug
        self.name = self.name.parameterize
    end

    def self.find_by_slug(slug)
        self.all.find { |g| g.name.parameterize == slug}
    end
end