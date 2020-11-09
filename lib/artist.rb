class Artist
    
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
    
        @@all << self
    end
    def self.all
        @@all
    end

def new_song(genre,name)
        Song.new(genre, self, name)
    end
def songs
        Song.all.select {|song|
        song.artist == self}
    end
#def genres
    #Song.all.select {|song|
#song.genre == self}
#end
def genres
    songs.map(&:genre)
end
#end
#def songs(name, genre)
  #Song.new(genre, name)#select
  #song.artist == self
    #end
end
