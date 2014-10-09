require 'minitest/autorun'
require 'minitest/pride'
require './panda'

class PandaTest < MiniTest::Test

  def test_panda_eats_bamboo_pikas_rodent
    %i(bamboo pikas rodent).each do |food|
    assert_equal true, panda.eat(:bamboo)
    end
  end

  def test_panda_does_not_eat_bacon
    #panda = Panda.new <- same as method
    assert_equal false, panda.eat(:bacon)
  end

  def test_panda_climbs_trees
    # panda = Panda.new
    assert_equal true, panda.climb(:tree)
  end

  def test_panda_not_climbs_hill
    # panda = Panda.new
    assert_equal false, panda.climb(:hill)
  end

  def test_pandas_do_not_sleep_a_bunch
    # panda = Panda.new
    percent = panda.sleep_percentage
    assert_equal false, (percent >= bunch_threshhold)
  end

  def bunch_threshhold
    16/24.0
  end

  def panda
    panda = Panda.new
  end

  # attr_reader :panda

end
