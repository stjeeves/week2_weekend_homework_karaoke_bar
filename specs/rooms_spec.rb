require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../rooms")
require_relative("../songs")
require("pry")

class TestRoom < MiniTest::Test

  def setup()

    @room1 = Room.new("The Whitney Houston Suite", 4,
      [@song1, @song2, @song3], 50)

    @room2 = Room.new("The Bon Jovi Suite", 3, [@song1, @song2, @song3],
    [@guest2, @guest3, @guest4], 50)

    @song1 = Song.new("Bohemian Rhapsody", "Queen")
    @song2 = Song.new("Ring Of Fire", "Johnny Cash")
    @song3 = Song.new("Drive", "Incubus")
    @song4 = Song.new("Foundations", "Kate Nash")
    @song5 = Song.new("K-Pop Nonsense", "BTS")
    @song6 = Song.new("Bat Out Of Hell", "Meatloaf")

    @guest1 = Guest.new("Stephen", 120, "Drive")
    @guest2 = Guest.new("Matthew", 200, "Bohemian Rhapsody")
    @guest3 = Guest.new("Michael", 150, "Ring Of Fire")
    @guest4 = Guest.new("Ariane", 100, "K-Pop Nonsense")
    @guest5 = Guest.new("Bjorn", 500, "Whats My Age Again?")

    @song_list = [@song1, @song2, @song3, @song4, @song5]

  end

  def test_get_room_name()
    assert_equal("The Whitney Houston Suite", @room1.name)
  end

  def test_get_room_capacity()
    assert_equal(4, @room1.capacity)
  end
  #
  def test_get_occupants()
    # binding.pry
    assert_equal([], @room1.occupants)
  end

  def test_add_song_to_playlist()
    assert_equal(4, @room1.add_song_to_playlist(@song6))
  end

  # def test_remove_song_from_playlist()
  #   assert_equal(2, @room1.remove_song_from_playlist(@song1))
  # end

  def test_check_in_to_room()
    assert_equal(1, @room1.check_in_to_room(@guest1))
  end

  def test_check_out_of_room()
    @occupants = [@guest1]
    assert_equal(0, @room1.check_out_of_room(@guest1))
  end

  def test_can_guest_check_in_true()
    assert_equal(true, @room1.can_guest_check_in())
  end

  def test_can_guest_check_in_false()
    assert_equal(false, @room2.can_guest_check_in())
  end


  def test_guest_pay_for_room()
    assert_equal(70, @room1.guest_pay_for_room(@guest1))
  end

  def test_check_playlist_for_favourite_song_true()
    assert_equal("Woo hoo!", @room1.check_playlist_for_favourite_song(@guest1))
  end

  def test_check_playlist_for_favourite_song_false()
    assert_equal("Boo!", @room1.check_playlist_for_favourite_song(@guest5))
  end

  # def test_whole_proccess_space()
  #   assert_equal("Yaldy!", @room1.whole_proccess(@guest1))
  # end
  #
  # def test_whole_proccess_no_space()
  #   assert_equal("No the night pal", @room2.whole_proccess(@guest1))
  # end

end
