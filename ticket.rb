class Ticket
  # To change this template use File | Settings | File Templates.
  attr_accessor :starting
  attr_accessor :destiny
  attr_accessor :time
  attr_accessor :seat
  attr_accessor :transport_id

  def initialize(starting,destiny,time,seat,transport_id)
    @starting = starting
    @destiny= destiny
    @time = time
    @seat = seat
    @transport_id = transport_id
  end

  def previous_connection?(ticket)
    if self.destiny.include?(ticket.starting)  && self.time<ticket.time
       true
    else
       false
    end
  end
  def later?(ticket)
    if self.time<ticket.time
      true
    else
      false
    end
  end
end

