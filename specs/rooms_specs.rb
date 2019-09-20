require("minitest/autorun")
require("minitest/rg")

class TestRooms < MiniTest::Test

  def setup

    @room1 = Rooms.new("Room1", 5)
    @room2 = Rooms.new("Room2", 6)
    @room3 = Rooms.new("Room3", 7)
    @rooms = [@room1, @room2, @room3]

  end





end
