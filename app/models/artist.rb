class Artist < ActiveRecord::Base
    has_many :songs
    has_many :artist_genres
    has_many :genres, through: :songs
    def slug
        self.name = self.name.parameterize
    end

    def self.find_by_slug(slug)
        self.all.find { |g| g.name.parameterize == slug}
    end
end