class Room

# STATE ?
# capacity (Fixnum)
# patients (Arrays of Patient instances)

  class CapacityReachedError < Exception; end

  def initialize(attributes = {})
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end


# BEHAVIOR
# add_patient
# full?

  def add_patient(patient)
   if self.full?
    fail CapacityReachedError
   else
    @patients << patient
    patient.room = self
   end
  end

  def full?
    @patients.size == @capacity
  end
end

room_one = Room.new({capacity: 2})

joe = Patient.new(name: 'joe')
bob = Patient.new(name: 'bob', cured: true)

room_one.add_patient(joe)
room_one.add_patient(bob)
room_one.add_patient(ringo)

p room_one
