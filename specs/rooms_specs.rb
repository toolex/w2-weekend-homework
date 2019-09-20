require("minitest/autorun")
require("minitest/rg")
require_relative("../Rooms")
require_relative("../Guests")

class TestRooms < MiniTest::Test

  def setup

    @guest1 = Guests.new("Iain")
    @guest2 = Guests.new("Bob")
    @guest3 = Guests.new("Jim")
    @guest4 = Guests.new("Jamie")
    @guest5 = Guests.new("Paul")
    @guest6 = Guests.new("Kat")
    @guest7 = Guests.new("Cathy")
    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6, @guest7]

    @room1 = Rooms.new("Room1", 5)
    @room2 = Rooms.new("Room2", 6)
    @room3 = Rooms.new("Room3", 7)
    @rooms = [@room1, @room2, @room3]

  end

  def test_number_of_people_in_room
    assert_equal(5, @room1.space_in_room)
  end

  def test_assign_guest_to_room
    @room1.assign_guest_to_room(@guest1)
    assert_equal(4, @room1.space_in_room)
    assert_equal([@guest1], @room1.guest_in_room)
  end

  def test_assign_multiple_guests_to_room
    @room1.assign_guest_to_room(@guest1)
    @room1.assign_guest_to_room(@guest2)
    assert_equal(3, @room1.space_in_room)
    assert_equal([@guest1, @guest2], @room1.guest_in_room)
  end

  def test_deassign_guest
    @room1.assign_guest_to_room(@guest1)
    @room1.assign_guest_to_room(@guest2)
    @room1.deassign_guest(@guest1)
    assert_equal(4, @room1.space_in_room)
    assert_equal([@guest2], @room1.guest_in_room)
  end



end
