require("minitest/autorun")
require("minitest/rg")
require_relative("../Songs")

class TestSongs < MiniTest::Test

  def setup

    @song1 = Song.new("Master of Puppets", "Metallica")
    @song2 = Song.new("The Trooper", "Iron Maiden")
    @song3 = Song.new("Strangers", "Sigrid")
    @songs = [@song1, @song2, @song3]

  end

end
