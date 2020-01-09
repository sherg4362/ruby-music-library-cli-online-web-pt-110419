class Artist
  attr_accessor :name
  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def songs
    @songs
  end
  
  def save
    @@all << self
  end
  
 def self.create(song)
   song = self.new(song)
   song.save
   song
 end
  
end