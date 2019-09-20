require("minitest/autorun")
require("minitest/rg")
require_relative("../Guests")

class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guests.new("Iain")
    @guest2 = Guests.new("Bob")
    @guest3 = Guests.new("Jim")
    @guest4 = Guests.new("Jamie")
    @guest5 = Guests.new("Paul")
    @guest6 = Guests.new("Kat")
    @guest7 = Guests.new("Cathy")
    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6, @guest7]
    #["Iain", "Bob", "Jim", "Jamie", "Paul", "Kat", "Cathy"]
  end

  def test_guest_name
    assert_equal("Iain", @guest1.guest_name)
  end

end
