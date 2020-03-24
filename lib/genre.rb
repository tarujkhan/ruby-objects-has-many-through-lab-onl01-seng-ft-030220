class Genre
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    #@song = song 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def songs 
    Song.all.select { |song| song.genre == self }
  end 
  
   #Song.all.select { |song| song.artist == self }
  
  def artists
    Song.all.collect {|song| song.artist}
  end 
    
end 



    
    