class TimeValidator < ActiveModel::Validator
    def validate(record)
        if record.termino < record.inicio + 90*60
            record.errors.add(:termino, ": o horário de término deve ser pelo menos 1h30 após o início")
        end
    end
end

class Reserva < ApplicationRecord

    belongs_to :user
    # , class_name: "object", foreign_key: "object_id"
    include ActiveModel::Validations

    validates_presence_of :inicio,
    message: "Complete os campos vazios"
    validates_presence_of :termino,
    message: "Complete os campos vazios"

    validates_with TimeValidator
    
end