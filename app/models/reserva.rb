class Reserva < ApplicationRecord

    validates_presence_of :inicio,
    message: "Complete os campos vazios"
    validates_presence_of :termino,
    message: "Complete os campos vazios"

    #validates_inclusion_of :inicio, in: [:],
    #message: "Insira o horário na forma hora:minuto"
    #validates_inclusion_of :termino, in: [:],
    #message: "Insira o horário na forma hora:minuto"

    #validates_numericality_of :termino,
        #greater_than_or_equal_to: :inicio
end
