 class Patient 
  attr_accessor :name
  
  @@all = []
  def initialize(name) #, appointment, doctor)
    @name = name
   # @appointment = appointment
    #@doctor = doctor
    
    @@all << self
  end
  
  def self.all
    @@all 
  end 
  
  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end 
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end 

def doctors 
  appointments.collect {|appointment| appointment.doctor}
end 
end 


    
