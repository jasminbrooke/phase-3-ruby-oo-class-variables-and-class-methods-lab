class Song

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each do |g|
            if hash[g]
                hash[g] += 1
            else
                hash[g] = 1
            end
        end
        hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |a|
            if artist_hash[a]
                artist_hash[a] += 1
            else
                artist_hash[a] = 1
            end
        end
        artist_hash
    end
end