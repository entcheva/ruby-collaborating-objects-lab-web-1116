class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @mp3s = []
  end

  def files
    Dir[path + "/*.mp3"].map do |file|
      file.sub(path + "/" , "")
    end
  end

  def import
    files.each do |file|
      @mp3s << Song.new_by_filename(file)
    end
    @mp3s
  end

end
