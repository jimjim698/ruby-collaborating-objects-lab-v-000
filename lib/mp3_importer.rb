class MP3Importer
attr_accessor :path, :files

def initialize(file)
  @path = file
  @files = Dir.entries(@path)
end

def files
  @files = Dir.entries(@path)
  @files.delete_if {|file|file == "."|| file == ".."}
end

def import
  @files.each do |file| Song.new_by_filename(file)
end
end


end
