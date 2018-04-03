class MP3Importer
attr_accessor :path

def initialize(file)
  @path = file
end

def files
  @files = Dir.entries(@path)
  @files.delete_if {|file|file == "."|| file == ".."}
end

def import
end


end
