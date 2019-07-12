class Artist
  attr_accessor :name
  attr_reader :songs

  ALL_SONGS = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    ALL_SONGS << song 
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    ALL_SONGS << song
    song.artist = self
  end

  def self.song_count
    ALL_SONGS.count
  end
end
