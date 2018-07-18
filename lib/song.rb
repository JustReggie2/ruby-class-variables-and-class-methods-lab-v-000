class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    gcount = {}
    @@genres.each do |the_genre|
      if gcount[the_genre]
        gcount[the_genre] += 1
      else
        gcount[the_genre] = 1
      end
    end
    gcount
  end


end
