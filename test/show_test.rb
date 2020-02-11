require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class ShowTest < Minitest::Test
  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end

  def test_show_exists
    assert_instance_of Show, @knight_rider
  end

  def test_show_has_name
    assert_equal "Knight Rider", @knight_rider.show_name
  end

  def test_show_has_a_creator
      assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_show_has_characters
    assert_equal [@michael_knight, @kitt], @knight_rider.characters
  end

  def test_show_has_highest_salary
    assert_equal 2600000, @knight_rider.total_salary
  end

  def test_highest_paid_actor
    assert_equal "David Hasselhoff", @knight_rider.highest_paid_actor
  end

  def test_show_can_produce_actor_names
    assert_equal ["David Hasselhoff", "William Daniels"], @knight_rider.actors
  end
end
# pry(main)> knight_rider.actors
# # => ["David Hasselhoff", "William Daniels"]
