class Panda

  def eat(food)
    %i(bamboo pikas rodent).include? food #array method
  end

  def climb(that_with_which_is_climbed)
    that_with_which_is_climbed == :tree
  end

end
