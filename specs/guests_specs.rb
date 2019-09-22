require("minitest/autorun")
require("minitest/rg")
require_relative("../Guests")

class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guests.new("Iain", 20)
    @guest2 = Guests.new("Bob", 15)
    @guest3 = Guests.new("Jim", 10)
    @guest4 = Guests.new("Jamie", 20)
    @guest5 = Guests.new("Paul", 15)
    @guest6 = Guests.new("Kat", 10)
    @guest7 = Guests.new("Cathy", 20)
    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6, @guest7]
    #["Iain", "Bob", "Jim", "Jamie", "Paul", "Kat", "Cathy"]
  end

  def test_guest_name
    assert_equal("Iain", @guest1.guest_name)
  end

end
