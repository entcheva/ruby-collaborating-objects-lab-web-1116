class Song
  attr_reader :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = new(file.split(" - ")[1].chomp)
    artisttt = Artist.find_or_create_by_name(file.split(" - ")[0].chomp)
  end

end
