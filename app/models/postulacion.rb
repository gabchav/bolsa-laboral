class Postulacion < ApplicationRecord
  belongs_to :persona
  belongs_to :oferta
end
