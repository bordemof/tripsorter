require 'rspec'
require_relative '../ticket_sorter_spec.rb'
require_relative '../ticket'

describe 'Sorts heterogeneous trip tickets based on date destiny and origin' do

  before :each do
    t3 = Ticket.new("Valladolid","Barcelona","2013-12-13 14:05:40","44-b","T3")
    t1 = Ticket.new("Barcelona","Madrid","2013-12-15 14:05:40","44-b","T1")
    t2 = Ticket.new("Madrid","Bilbao","2013-12-16 14:05:40","44-b","T2")
    t4 = Ticket.new("Madrid","Bilbao","2013-12-16 16:05:40","44-b","T4")
    t5 = Ticket.new("Madrid","Wisconsin","2013-12-16 16:05:40","44-b","T5")
    t6 = Ticket.new("Barcelona","Bilbao","2013-12-16 16:05:40","44-b","T6")

    tree = TicketSortedContainer.new(t1)

    tree = tree.add_ticket(t3)
    tree = tree.add_ticket(t2)
    tree = tree.add_ticket(t6)
    tree = tree.add_ticket(t4)
    tree = tree.add_ticket(t5)

  end

  it 'Should check the order in the given tickets is correct ' do

  end
end

