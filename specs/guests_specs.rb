require("minitest/autorun")
require("minitest/rg")
require_relative("../Guests")
require_relative("../Rooms")

class TestGuest < MiniTest::Test

  def setup

    @room1 = Rooms.new("Room1", 5, 2)

    @guest1 = Guests.new("Iain", 20)
    @guest2 = Guests.new("Bob", 15)
    @guest3 = Guests.new("Jim", 10)
    @guest4 = Guests.new("Jamie", 20)
    @guest5 = Guests.new("Paul", 15)
    @guest6 = Guests.new("Kat", 10)
    @guest7 = Guests.new("Cathy", 20)
    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6, @guest7]
  end

  def test_guest_name
    assert_equal("Iain", @guest1.guest_name())
  end

  def test_guests_cash
    assert_equal(15, @guest2.guest_cash())
  end

  def test_book_room__lowers_cash
      @guest1.book_room(@room1)
      assert_equal(18, @guest1.guest_cash())
    end


end
