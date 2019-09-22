class Rooms

  def initialize(room_name, capacity)
    @room_name = room_name
    @capacity = capacity
    @guests_in_room = []
    @current_song = []
  end

  def space_in_room
    return @capacity - @guests_in_room.length
  end

  def assign_guest_to_room(guest)
    if space_in_room > 0
      then @guests_in_room.push(guest)
    end
  end

  def guest_in_room
    return @guests_in_room
  end

  def deassign_guest(guest)
    @guests_in_room.delete(guest)
  end

  def song_currently_playing
    return @current_song
  end

  def assign_song_to_room(song)
    @current_song.push(song)
  end

  def deassign_song_to_room(song)
    @current_song.delete(song)
  end

end
