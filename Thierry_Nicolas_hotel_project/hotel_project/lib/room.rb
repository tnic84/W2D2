class Room
 def initialize(number)
    @capacity = number
    @occupants = []
 end 

 def capacity
    @capacity
 end 

 def occupants
    @occupants
 end 

 def full?
    if @occupants.length < @capacity
        return false
    elsif @occupants.length == @capacity
        return true
    end
 end 

 def available_space
    @capacity - @occupants.length
 end 

 def add_occupant(name)
       if full? == false 
        @occupants << name
        return true 
       else 
        return false
       end 
 end 



end
