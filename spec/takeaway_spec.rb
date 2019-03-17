require 'takeaway'
# links the spec to the ruby folder. rspec knows to look in the lib folder for it.

describe Takeaway do
  subject(:takeaway) { described_class.new(menu: menu) }
  # the main part of a test, this is how the method would call in a subject.
  # the menu: menu part is injecting the menu into the takeaway. We could argue
  # that the task of displaying a menu should be delegated to a menu object.

  let(:menu) { double(:menu, print: printed_menu) }
  let(:printed_menu) { "Pizza: £6.50" }
  # this is creating a double of the menu class and our print method.
  # A double will prevent our test failing due to a lack of class.
  # this is handy in cases where you haven't made that class or method yet.
  # Doubles are also handy to prevent depenency on another class. Keeps your
  # tests all independent.

  it 'shows the menu with dishes and prices' do
    # the first user story.
    expect(takeaway.print_menu).to eq(printed_menu)
    # we'll be stubbing the menu object so printed_menu is just dummy text.
  end
end
