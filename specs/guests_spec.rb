require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../songs")

class TestGuest < MiniTest::Test

def setup()
  @guest1 = Guest.new("Stephen", 120, "Livin On A Prayer")
end

def test_get_name()
  assert_equal("Stephen", @guest1.name)
end

def test_get_money()
  assert_equal(120, @guest1.money)
end

def test_get_favourite_song()
  assert_equal("Livin On A Prayer", @guest1.favourite_song)
end



end
