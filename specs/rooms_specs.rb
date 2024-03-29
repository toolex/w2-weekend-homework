require("minitest/autorun")
require("minitest/rg")
require_relative("../Rooms")
require_relative("../Guests")
require_relative("../Songs")

class TestRooms < MiniTest::Test

  def setup

    @guest1 = Guests.new("Iain", 20)
    @guest2 = Guests.new("Bob", 15)
    @guest3 = Guests.new("Jim", 10)
    @guest4 = Guests.new("Jamie", 20)
    @guest5 = Guests.new("Paul", 15)
    @guest6 = Guests.new("Kat", 10)
    @guest7 = Guests.new("Cathy", 20)
    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6, @guest7]

    @room1 = Rooms.new("Room1", 5, 2)
    @room2 = Rooms.new("Room2", 6, 3)
    @room3 = Rooms.new("Room3", 7, 5)
    @rooms = [@room1, @room2, @room3]

    @song1 = Songs.new("Master of Puppets", "Metallica")
    @song2 = Songs.new("The Trooper", "Iron Maiden")
    @song3 = Songs.new("Strangers", "Sigrid")
    @songs = [@song1, @song2, @song3]

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

  def test_song_currently_playing
    assert_equal([], @room1.song_currently_playing)
  end

  def test_assign_song_to_room
    @room1.assign_song_to_room(@song1)
    assert_equal([@song1], @room1.song_currently_playing)
  end

  def test_too_many_guests
    @room1.assign_guest_to_room(@guest1)
    @room1.assign_guest_to_room(@guest2)
    @room1.assign_guest_to_room(@guest3)
    @room1.assign_guest_to_room(@guest4)
    @room1.assign_guest_to_room(@guest5)
    @room1.assign_guest_to_room(@guest6)
    assert_equal(0, @room1.space_in_room)
  end

  # def test_take_cash
  #   guests_new_cash = @room1.take_cash(@guest1)
  #   assert_equal(18, guests_new_cash.guest_cash)
  # end

end
