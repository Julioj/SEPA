class Company < ApplicationRecord
	belongs_to :employee, :foreign_key => 'employeeId'
	belongs_to :industryType, :foreign_key => 'industryTypeId'
	has_many :visit, :foreign_key => 'companyId'
	has_many :comment, :foreign_key => 'companyId'
	accepts_nested_attributes_for :visit, allow_destroy: true
	validates_presence_of  :employee, :message => "Seleccione un Responsable de la lista" 
	validates_presence_of  :industryType, :message => "Seleccione un Tipo de Industria de la lista" 
end
