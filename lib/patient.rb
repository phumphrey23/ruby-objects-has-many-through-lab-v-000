class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointment
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctor
    appointments.map{|appointment| appointment.doctor}
  end

end
