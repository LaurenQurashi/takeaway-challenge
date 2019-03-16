
class Menu

  PRODUCTS = {
    "Pizza" => 5,
    "Chips" => 2,
    "Halloumi" => 3,
    "Burger" => 4
  }

  def display
    PRODUCTS.each do |item, price|
      puts "#{item}: £#{price}"
    end
  end
end
