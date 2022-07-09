class Empresa < ApplicationRecord
  has_and_belongs_to_many :oferta, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
