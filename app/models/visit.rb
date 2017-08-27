class Visit < ApplicationRecord
	belongs_to :company, :foreign_key => 'companyId'
	belongs_to :employee, :foreign_key => 'employeeId'
	belongs_to :visitType, :foreign_key => 'visitTypeId'
	belongs_to :frecuency, :foreign_key => 'frecuencyTypeId'
	has_many :document, :foreign_key => 'visitId'

	def to_s
    	"visitTypeId:#{self.visitTypeId} frecuencyTypeId:#{self.frecuencyTypeId} employeeId: #{self.employeeId} "
  	end
  	accepts_nested_attributes_for :document, allow_destroy: true
end
