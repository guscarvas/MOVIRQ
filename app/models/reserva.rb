class Reserva < ApplicationRecord

    #validates_presence_of :inicio,
    #message: "Complete os campos vazios"
    #validates_presence_of :termino,
    #message: "Complete os campos vazios"

    f = Reserva
    if f.termino < f.inicio + 60*90
        Reserva.errors.add(:termino, "Deve haver pelo menos 1h30 de reserva")
    end
    #x = :inicio + 60*90
    #if :termino < x
    #    Reserva.errors.add(:termino, "Deve haver pelo menos 1h30 de reserva")
    #end

    #validates :termino,
    #    greater_than_or_equal_to @reserva.inicio + 60*90

    
    #validates_time :inicio, :on_or_after => '17:00',
    #                        :on_or_after_message => 'Deve ser após 17h'
    #validates_time :termino, :after => :inicio,
    #                         :after_message => 'deve ser 1h30 após o horário de início'

    #validates_inclusion_of :inicio, in: [:],
    #message: "Insira o horário na forma hora:minuto"
    #validates_inclusion_of :termino, in: [:],
    #message: "Insira o horário na forma hora:minuto"

    #validates_numericality_of :termino,
        #greater_than_or_equal_to: :inicio
end
