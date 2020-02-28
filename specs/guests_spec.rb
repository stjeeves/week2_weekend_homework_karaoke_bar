require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../songs")

class TestGuest < MiniTest::Test

def setup()
  @guest1 = Guest.new("Stephen", 120, "Livin On A Prayer")
end




end
