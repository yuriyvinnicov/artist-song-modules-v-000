require 'pry'
require_relative './memorable.rb'
require_relative './findable.rb'
require_relative './paramable.rb'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :songs


  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  
   #def reset_all
    #self.all.clear
  #end

  #def count
  #   self.all.count
  #end

end
