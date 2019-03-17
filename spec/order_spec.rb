require 'order'

describe Order do
  subject(:order) { described_class.new(menu) }
  # we're injecting a menu into our order class.
  let(:menu) { double(:menu) }
  let(:dishes) do
    {
      dumplings: 2,
      pizza: 1
    }
    # we're making a double of menu, and of dishes.
    # dishes is our empty hash specified in our order class.
    # we're just shoving fake values in here to check the behaviours of
    # our functions.
  end

  before do
    allow(menu).to receive(:has_dish?).with(:dumplings).and_return(true)
    allow(menu).to receive(:has_dish?).with(:pizza).and_return(true)
    # before the following tests, we're stubbing in some values.
    # we're yet to make a has_dish? at this stage so we're making up some results.
    # if we didn't do this, the following two tests would fail.
    # the first one would fail as we have a raise error set up on our ruby code.
    #  the second one would fail because it doesn't know what sushi is. 
  end

  it 'selects several dishes from the menu' do
    order.add(:dumplings, 2)
    order.add(:pizza, 1)
    expect(order.dishes).to eq(dishes)
  end

  it 'doesn\'t allow non specified dishes to be added to an order ' do
    allow(menu).to receive(:has_dish?).with(:sushi).and_return(false)
    expect { order.add(:sushi, 3) }.to raise_error "This is not on the menu."
  end


end
