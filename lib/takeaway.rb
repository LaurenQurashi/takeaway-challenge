require 'order'

class Takeaway

  def initialize(menu:, order: nil)
    @menu = menu
    @order = order || Order.new
    # this lets us pass in a default new order if we don't
    # have one.
  end

  def print_menu
    menu.print
    # this is delegation, it's calling another object from
    # one object and saying you deal with this.
  end

  def place_order(dishes)
    dishes.each do |dish, quantity|
      order.add(dish, quantity)
    end
  end

  private
  # this stops other classes coming in and editing
  # these values and methods.

  attr_reader :menu, :order
  # attr readers allow other classes to access our menu.

end
