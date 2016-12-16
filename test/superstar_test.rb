require "./test/test_helper"
require "./lib/superstar"

class SuperstarTest < Minitest::Test

  def test_its_a_superstar
    superstar = Superstar.new

    assert superstar
    assert_equal Superstar, superstar.class
  end

end
