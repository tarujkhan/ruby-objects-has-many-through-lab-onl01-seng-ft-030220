class Doctor 
  attr_accessor :name, :appointments
  
  @@all = []
  def initialize(name)
    @name = name
   # @patient = patient
   # @appointments = appointments
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(patient, date) 
    new_appointment = Appointment.new(date, patient, self)
    
  end 
  
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end 
  
   #Song.all.select { |song| song.artist == self }
  
  def patients 
  appointments.collect {|appointment| appointment.patient}
  end
end 

    #songs.collect {|song| song.genre}