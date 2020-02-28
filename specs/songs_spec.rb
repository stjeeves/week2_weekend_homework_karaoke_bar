require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../songs")

class TestSong < MiniTest::Test

  def setup()

    @song1 = Song.new("Livin On A Prayer", "Bon Jovi")

  end

  def test_get_song_name()
    assert_equal("Livin On A Prayer", @song1.name)
  end

  def test_get_song_artist()
    assert_equal("Bon Jovi", @song1.artist)
  end

end
