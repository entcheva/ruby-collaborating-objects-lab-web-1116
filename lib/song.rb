class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = Song.new(file.split(' - ')[1].strip)
    artist = Artist.find_or_create_by_name(file.split(' - ')[0].strip)
    song.artist = artist
    artist.add_song(song)
    song
  end
  
end
