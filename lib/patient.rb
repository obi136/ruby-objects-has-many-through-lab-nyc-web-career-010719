class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appoint|
      appoint.patient
    end
  end

  def doctors
    appointments.map do |appoint|
      appoint.doctor
    end
  end
end
