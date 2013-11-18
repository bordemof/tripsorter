require_relative 'ticket'

class TicketSortedContainer
  # To change this template use File | Settings | File Templates.

  attr_accessor :children
  attr_accessor :value

  def initialize(v)
     @value = v
     @children = []

  end

  def add_ticket(ticket)

    if (@value.previous_connection?(ticket))
      self.children << TicketSortedContainer.new(ticket)
      return self
    elsif ticket.previous_connection? @value
      t = TicketSortedContainer.new(ticket)
      t.children << self
      return t
    elsif @value.later? ticket
      @children.each do |child|
          child.add_ticket(ticket)
        return self
      end
    end
  end
  def print_node(num)
      sep = "----"
      counter = num
      print sep*counter
      counter += 1
      puts self.value.transport_id.to_s

      @children.each do |child|
        child.print_node(counter)

      end

  end

end




