# The Song class will be responsible
# for creating songs given each
# filename and sending the artist's
# name (a string) to the Artist
# class


class Song
  attr_reader :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = new(file.split(" - ")[1].chomp)
    artist = Artist.find_or_create_by_name(file.split(" - ")[0].chomp)
    song.artist = artist
    artist.add_song(song)
    song
  end

end
