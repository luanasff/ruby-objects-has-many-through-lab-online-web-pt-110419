class Artist 
  
  attr_accessor   :name   
  
  
  
  @@all = []
  
  
  def self.all
    @@all
  end
  
  
   def initialize(name)
     @name = name 
     @@all >> self 
     
  end 
  
  
  def songs
     Song.all.select {|song| song.artist == self}
   end
  
   def genres
    songs.collect {|song| song.genre}
   end

  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  
end 