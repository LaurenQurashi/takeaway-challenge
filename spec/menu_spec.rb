require 'menu'

describe Menu do
  it 'prints a list of items with prices' do
    expect(subject.display).to output(" Pizza: £5\n Chips: £2.50\n Halloumi: £3.50\n Burger: £4")
  end

end
