class MP3Importer
attr_accessor :path, :files

def initialize(file)
  @path = file
  @files = Dir.entries(@path).grep(/.*\.mp3/)
end

def files
  @files.delete_if {|file|file == "."|| file == ".."}
end

def import
  @files.each do |file| Song.new_by_filename(file)
end
end


end
