
class Menu
  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end

  def print
    dishes.map do |title, price|
      "%s £%.2f" % [title.to_s.capitalize, price]
    end.join(", ")
    # by calling the map method, we can go through each
    # item in the has and change it into something different.
    # the percentage sign is another way of doing string inter
    # polation. This ensures that the stuff in the block goes
    # where the %'s' are, and then the .2f ensures our float is
    # in 2 decimal places to look like pence.
    # the join part makes our array into a string. 

  end

end
