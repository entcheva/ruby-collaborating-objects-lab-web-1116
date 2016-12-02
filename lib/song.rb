# The Song class will be responsible
# for creating songs given each
# filename and sending the artist's
# name (a string) to the Artist
# class


class Song
  attr_reader :name, :artist

  def initialize(name) #song name
    @name = name
  end

  def name=(name)
    @name = name
  end

  # def artist=(artist)
  #   @all << artist
  #   artist.name << self
  # end


end
