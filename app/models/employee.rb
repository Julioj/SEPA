class Employee < ApplicationRecord
	has_many :company
	has_many :visit
	has_many :ordene
	validates :cuit, format: { with: /\A\d+\z/, message: "Por favor ingrese solo Numeros para el CUIT" }, length: { is: 11, message: "Por favor ingrese solo 11 digitos para el CUIT" }
end
