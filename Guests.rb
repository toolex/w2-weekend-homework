class Guests

  def initialize(name, cash)
    @name = name
    @cash = cash
  end

  def guest_name
    return @name
  end

  def guest_cash
    return @cash
  end

  def book_room(room)
    @cash -= room.price()
  end

end
