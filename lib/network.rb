require './lib/show'
require './lib/character'

class Network
  attr_reader :name
  attr_accessor :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main = []
    @shows.each do |show|
      main.concat(show.characters)
    end
    main
  end

  def actors_by_show
    shows = {}
    @shows.each do |show|
      shows[show] = show.actors
    end
    shows
  end
end
