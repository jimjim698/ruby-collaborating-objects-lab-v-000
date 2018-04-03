class MP3Importer
attr_accessor :path, :files

def initialize(file)
  @path = file
@files = Dir.entries(path).grep(/.*\.mp3/)
end


def import
  self.files.each do |file|
  song = Song.new_by_filename(file)
    Artist.all << song.artist unless Artist.all.include?(song.artist)
  end
end

end
