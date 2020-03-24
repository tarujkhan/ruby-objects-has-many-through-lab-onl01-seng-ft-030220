require 'pry'
class Artist 
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    #@songs = []
    @@all << self
  end 
  
    def self.all
      @@all
    end 
  

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
   # @songs << new_song
  end 
  
  def songs 
    
    Song.all.select { |song| song.artist == self }
   # Song.all.select {|song|}
    #song.self
    #return songs
  end
  
  def genres 
    songs.collect {|song| song.genre}
    
  end 
end 


    


