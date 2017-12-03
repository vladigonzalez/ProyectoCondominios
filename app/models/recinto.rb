class Recinto < ApplicationRecord
    has_many :propiedads
    belongs_to :tipo_propiedad
end
