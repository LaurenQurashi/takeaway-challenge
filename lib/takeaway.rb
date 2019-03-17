
class Takeaway
  def initialize(menu:)
    @menu = menu
  end

  def print_menu
    menu.print
    # this is delegation, it's calling another object from
    # one object and saying you deal with this.

  end

  private 
  # this stops other classes coming in and editing
  # these values and methods.

  attr_reader :menu
  # attr readers allow other classes to access our menu.

end
