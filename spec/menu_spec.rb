require 'menu'
describe Menu do
  subject(:menu) { described_class.new(dishes) }
  # this is us injecting a hash into our described class.
  let(:dishes) do
    {
      dumplings: 4.99,
      pizza: 10.00
    }
  end
  it 'has a list of dishes with prices' do
    expect(menu.dishes).to eq(dishes)
  end

  it 'has a list of dishes with prices' do
    # this is where we get to impliment the print method we want.
    printed_menu = "Dumplings £4.99, Pizza £10.00"
    # we've saved our menu as a variable to prevent us having
    # too longer lines.
    # we're just making our output something more user friendly.
    expect(menu.print).to eq(printed_menu)
  end
end
