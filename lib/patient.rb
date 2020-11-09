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
    def new_appointment(doctor,name)
        Appointment.new(doctor, self, name)
    end
def appointments
        Appointment.all.select {|appointment|
        appointment.patient == self}
    end
    def doctors
        appointments.map(&:doctor)
    end
    
end