class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name
    @artist = artist
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
  
 def self.create(artist)
   artist = self.new(artist)
   artist.save
   artist
 end
  
end