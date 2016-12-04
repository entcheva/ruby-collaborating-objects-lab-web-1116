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
  end

end
