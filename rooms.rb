class Room

  attr_reader :name, :capacity,:playlist, :occupants

def initialize(name, capacity, playlist, occupants = [])
  @name = name
  @capacity = capacity
  @playlist = playlist
  @occupants = occupants

end

def add_song_to_playlist(song)
  @playlist.push(song)
  @playlist.count
end

def remove_song_from_playlist(song)
  @playlist.delete(song)
  @playlist.count
end

def check_in_to_room(guest)
  @occupants << guest
  @occupants.count
end

def check_out_of_room(guest)
  @occupants.delete(guest)
  @occupants.count
end

def can_guest_check_in()
  if occupants.count <= capacity
    return true
  else
    return false
  end
end

end
