class Artist
  attr_accessor :songs, :name
  
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    all.each do |artist|
      return artist if artist.name == name
    end
    artist = new(name)
    artist.save
    artist
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end
