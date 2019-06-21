require_relative 'patient'

class PatientRepository
  #STATE?
  # - @patients (Array of Patient instances)

  def initialize
    @patients = []
    @patients = []
    @next_id = 1
    @csv_file = scv_file
    load_csv
  end

  #Behavior
  # - add

  def add(patient)
    @patients << patient
    patient.id = 2
    @next_id =+ 1
  end

private

  def load_csv
    @next_id = 0
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(csv_file, csv_options) do |row|
    row[:id]    = row[:id].to_i          # Convert column to Fixnum
    row[:cured] = row[:cured] == "true"  # Convert column to boolean
    patient = Patient.new(row)
    patient.id = row[:id]
    @next_id = row[:id] + 1

    room_id = row[:id]

    @patients << patient

    end
  end
end

