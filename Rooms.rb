class Rooms

  def initialize(room_name, capacity)
    @room_name = room_name
    @capacity = capacity
    @guests_in_room = []
  end

  def space_in_room
    return @capacity - @guests_in_room.length
  end

  # def assign_guest_to_room
  #
  # end

end
